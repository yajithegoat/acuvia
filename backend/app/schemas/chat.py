from pydantic import BaseModel
from typing import List

class ChatMessage(BaseModel):
    role: str  # 'user' or 'assistant'
    content: str

class ChatInput(BaseModel):
    message: str

class ChatOutput(BaseModel):
    response: str
    messages: List[ChatMessage]
