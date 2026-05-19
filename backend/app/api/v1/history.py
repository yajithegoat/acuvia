from fastapi import APIRouter, Depends, Query
from sqlalchemy.orm import Session
from app.api.deps import get_db, get_current_user
from app.db import models
from typing import List

router = APIRouter(prefix="/history", tags=["history"])

@router.get("")
def list_history(limit: int = 20, offset: int = 0, db: Session = Depends(get_db), user: models.User = Depends(get_current_user)):
    q = db.query(models.Assessment).filter(models.Assessment.user_id == user.id).order_by(models.Assessment.created_at.desc())
    total = q.count()
    items = q.offset(offset).limit(limit).all()
    def serialize(a: models.Assessment):
        return {
            "id": a.id,
            "symptoms_text": a.symptoms_text,
            "urgency": a.urgency.value if hasattr(a.urgency, "value") else a.urgency,
            "reasons": a.reasons,
            "recommended_actions": a.recommended_actions,
            "created_at": a.created_at.isoformat()
        }
    return {"total": total, "items": [serialize(a) for a in items]}
