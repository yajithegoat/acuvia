# backend/app/ai/model.py
from typing import Any, Dict, List, Tuple
import joblib
import numpy as np
from app.ai.preprocessing import tokenize
from app.ai.rules import detect_rules

# Load pre-trained artifacts once at import
VECTORIZER = joblib.load("app/ai/artifacts/vectorizer.joblib")
MODEL = joblib.load("app/ai/artifacts/rf_model.joblib")
LABELS = ["Emergency", "Urgent", "Non-Urgent"]  # ensure training label order matches

def classify(symptoms_text: str, checklist: dict | None) -> Dict[str, Any]:
    # 1) Rules
    rule_label, rule_reasons = detect_rules(symptoms_text, checklist)

    # 2) ML prediction
    X = VECTORIZER.transform([symptoms_text])
    proba = MODEL.predict_proba(X)[0] if hasattr(MODEL, "predict_proba") else None
    pred_idx = int(MODEL.predict(X)[0])
    ml_label = LABELS[pred_idx]

    # Combine rules + ML
    if rule_label == "Emergency":
        final = "Emergency"
    elif rule_label == "Urgent" and ml_label == "Non-Urgent":
        # favor safety
        final = "Urgent"
    else:
        # If rules none: use ML; if rules non-urgent hints and ML says urgent, pick urgent
        final = ml_label

    # Explainability: reasons + top features
    expl = explain(symptoms_text, X, proba, final, rule_reasons)
    return {
        "urgency": final,
        "reasons": expl["reasons"],
        "recommended_actions": expl["actions"],
        "probabilities": dict(zip(LABELS, proba.tolist() if proba is not None else [0,0,0]))
    }

def explain(text: str, X, proba, final_label: str, rule_reasons: List[str]) -> Dict[str, Any]:
    reasons = list(rule_reasons)
    # Extract top tf-idf features contributing (approx): use feature log probabilities or RF feature importances
    try:
        importances = getattr(MODEL, "feature_importances_", None)
        if importances is not None:
            fi = importances
            # get non-zero indices
            top_idx = np.argsort(fi)[-5:][::-1]
            feature_names = np.array(VECTORIZER.get_feature_names_out())
            top_feats = [feature_names[i] for i in top_idx]
            reasons += [f"Model signal: {w}" for w in top_feats]
    except Exception:
        pass

    # Actions
    if final_label == "Emergency":
        actions = [
            "Call local emergency number immediately.",
            "Do not drive yourself; wait for medical assistance.",
            "If available, share your location with responders."
        ]
    elif final_label == "Urgent":
        actions = [
            "Seek medical care within 24 hours.",
            "Increase fluids and rest.",
            "Use the hospital locator to find the nearest clinic."
        ]
    else:
        actions = [
            "Monitor symptoms at home.",
            "Rest, hydrate, and use OTC medications as appropriate.",
            "If symptoms worsen, escalate to urgent care."
        ]
    return {"reasons": reasons, "actions": actions}
