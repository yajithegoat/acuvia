# backend/app/services/chatbot.py
from typing import List
from app.db import models
from sqlalchemy.orm import Session

SAFETY_PREFIX = (
    "I am an assistant that helps with urgency advice, not diagnosis. "
    "For life-threatening symptoms, call emergency services. "
)

def generate_response(user_message: str) -> str:
    # Very simple rule-based response; in production integrate with a hosted LLM and a safety prompt.
    msg = user_message.lower()
    if "diagnose" in msg or "what do i have" in msg:
        return SAFETY_PREFIX + "I cannot diagnose conditions. I can help assess urgency and next steps."
    if "emergency" in msg or "chest pain" in msg or "shortness of breath" in msg:
        return SAFETY_PREFIX + "This sounds potentially serious. Please seek emergency care now."
    return SAFETY_PREFIX + "Based on your message, consider using the assessment tool or describe your symptoms in detail."
