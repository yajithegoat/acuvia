from pydantic import BaseModel, Field
from typing import Optional, Dict, List
from enum import Enum

class UrgencyEnum(str, Enum):
    emergency = "Emergency"
    urgent = "Urgent"
    non_urgent = "Non-Urgent"

class TriageInput(BaseModel):
    symptoms_text: str = Field(..., min_length=3)
    checklist: Optional[Dict[str, bool]] = None

class TriageOutput(BaseModel):
    urgency: UrgencyEnum
    reasons: List[str]
    recommended_actions: List[str]
    probabilities: dict
    assessment_id: int
