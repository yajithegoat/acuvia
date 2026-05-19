# backend/app/ai/preprocessing.py
import re
import nltk
from nltk.stem import WordNetLemmatizer
from nltk.corpus import stopwords
from typing import List

_lemmatizer = WordNetLemmatizer()
_stop = set(stopwords.words("english"))

def normalize(text: str) -> str:
    t = text.lower()
    t = re.sub(r"[^a-z0-9\s]", " ", t)
    t = re.sub(r"\s+", " ", t).strip()
    return t

def tokenize(text: str) -> List[str]:
    tokens = normalize(text).split()
    return [_lemmatizer.lemmatize(t) for t in tokens if t not in _stop]
