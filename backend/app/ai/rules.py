# backend/app/ai/rules.py
from typing import List, Tuple

EMERGENCY_KEYWORDS = [
    "chest pain", "severe shortness of breath", "shortness of breath", "stroke",
    "face drooping", "arm weakness", "speech difficulty", "severe bleeding",
    "uncontrolled bleeding", "loss of consciousness"
]

URGENT_KEYWORDS = [
    "persistent fever", "fever > 39", "fever 39", "moderate breathing",
    "vomiting", "dehydration", "severe headache", "worsening cough"
]

NON_URGENT_HINTS = [
    "mild headache", "mild cough", "runny nose", "sore throat", "minor"
]

def detect_rules(symptoms_text: str, checklist: dict | None) -> Tuple[str | None, List[str]]:
    text = symptoms_text.lower()
    reasons: List[str] = []
    for k in EMERGENCY_KEYWORDS:
        if k in text:
            reasons.append(f"Emergency trigger: {k}")
    if reasons:
        return "Emergency", reasons

    for k in URGENT_KEYWORDS:
        if k in text:
            reasons.append(f"Urgent indicator: {k}")
    if reasons:
        return "Urgent", reasons

    for k in NON_URGENT_HINTS:
        if k in text:
            reasons.append(f"Non-urgent hint: {k}")
    # no hard label for non-urgent, leave ML to decide; reasons still informative
    return None, reasons
