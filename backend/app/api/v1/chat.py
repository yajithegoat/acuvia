from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from app.api.deps import get_db, get_current_user
from app.schemas.chat import ChatInput, ChatOutput, ChatMessage
from app.services.chatbot import generate_response
from app.db import models

router = APIRouter(prefix="/chat", tags=["chat"])

@router.post("", response_model=ChatOutput)
def chat(payload: ChatInput, db: Session = Depends(get_db), user: models.User = Depends(get_current_user)):
    # store user message
    user_msg = models.Chat(user_id=user.id, role="user", content=payload.message)
    db.add(user_msg)
    db.commit()
    db.refresh(user_msg)

    # generate and store assistant response
    resp_text = generate_response(payload.message)
    asst_msg = models.Chat(user_id=user.id, role="assistant", content=resp_text)
    db.add(asst_msg)
    db.commit()
    db.refresh(asst_msg)

    messages = [
        {"role": "user", "content": user_msg.content},
        {"role": "assistant", "content": asst_msg.content}
    ]
    return ChatOutput(response=resp_text, messages=messages)
