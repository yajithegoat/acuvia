FROM python:3.13-slim

WORKDIR /app

# Install system deps required for some Python packages (e.g. psycopg2)
RUN apt-get update \
    && apt-get install -y --no-install-recommends gcc libpq-dev build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy only pyproject first to leverage Docker cache if dependencies don't change
COPY pyproject.toml poetry.lock* /app/

# Install pip and essential Python packages
RUN python -m pip install --upgrade pip setuptools
RUN pip install --no-cache-dir fastapi uvicorn[standard] sqlalchemy psycopg2-binary python-jose[cryptography] passlib[bcrypt] pydantic pydantic-settings alembic

# Copy the application code
COPY . /app

EXPOSE 8000

ENV PYTHONUNBUFFERED=1

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
