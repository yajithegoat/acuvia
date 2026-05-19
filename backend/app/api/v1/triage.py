from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from app.api.deps import get_db, get_current_user
from app.schemas.triage import TriageInput, TriageOutput, UrgencyEnum
from app.db import models
from app.ai.model import classify

router = APIRouter(prefix="/triage", tags=["triage"])

@router.post("", response_model=TriageOutput)
def triage(payload: TriageInput, db: Session = Depends(get_db), user: models.User = Depends(get_current_user)):
    result = classify(payload.symptoms_text, payload.checklist)
    urgency = result["urgency"]
    assessment = models.Assessment(
        user_id=user.id,
        symptoms_text=payload.symptoms_text,
        checklist=payload.checklist,
        urgency=urgency,
        reasons=result["reasons"],
        recommended_actions=result["recommended_actions"],
    )
    db.add(assessment)
    db.commit()
    db.refresh(assessment)

    return {
        "urgency": urgency,
        "reasons": result["reasons"],
        "recommended_actions": result["recommended_actions"],
        "probabilities": result["probabilities"],
        "assessment_id": assessment.id
    }
