# backend/app/ai/train.py
import joblib
import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report

# Example synthetic training set — replace with curated dataset in production
data = [
    ("severe shortness of breath and chest pain", "Emergency"),
    ("severe bleeding from a deep cut", "Emergency"),
    ("face drooping and speech difficulty", "Emergency"),
    ("persistent fever for three days", "Urgent"),
    ("moderate breathing issues and fatigue", "Urgent"),
    ("vomiting and signs of dehydration", "Urgent"),
    ("mild headache and mild cough", "Non-Urgent"),
    ("sore throat and runny nose", "Non-Urgent"),
    ("minor symptoms improving", "Non-Urgent"),
]
df = pd.DataFrame(data, columns=["text", "label"])
label_map = {"Emergency": 0, "Urgent": 1, "Non-Urgent": 2}
y = df["label"].map(label_map).values

vectorizer = TfidfVectorizer(ngram_range=(1,2), min_df=1, max_features=5000)
X = vectorizer.fit_transform(df["text"])

X_train, X_test, y_train, y_test = train_test_split(X, y, stratify=y, test_size=0.3, random_state=42)
clf = RandomForestClassifier(n_estimators=200, random_state=42, class_weight="balanced")
clf.fit(X_train, y_train)

print(classification_report(y_test, clf.predict(X_test)))

joblib.dump(vectorizer, "app/ai/artifacts/vectorizer.joblib")
joblib.dump(clf, "app/ai/artifacts/rf_model.joblib")
