# backend/app/core/config.py
from pydantic_settings import BaseSettings
from pydantic import AnyUrl

class Settings(BaseSettings):
    PROJECT_NAME: str = "Acuvia"
    API_V1_STR: str = "/api/v1"
    SECRET_KEY: str
    ACCESS_TOKEN_EXPIRE_MINUTES: int = 60 * 24
    POSTGRES_HOST: str = "localhost"
    POSTGRES_PORT: int = 5432
    POSTGRES_DB: str = "acuvia"
    POSTGRES_USER: str = "acuvia"
    POSTGRES_PASSWORD: str = "acuvia"
    CORS_ORIGINS: list[str] = ["[localhost](http://localhost:3000)", "[localhost](http://localhost:5173)", "[localhost](http://localhost:8080)", "[localhost](http://localhost:8000)"]
    ENV: str = "dev"

    class Config:
        env_file = ".env"

settings = Settings()
