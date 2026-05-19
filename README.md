# 🩺 Acuvia — AI-Driven Medical Triage Platform

<p align="center">
  <img src="https://storage.googleapis.com/cms-storage-bucket/0428ef40da22b6045167.png" alt="Flutter Logo" width="140" style="margin: 10px;"/>
  <img src="https://icon.icepanel.io/Technology/svg/FastAPI.svg" alt="FastAPI Logo" width="100" style="margin: 10px;"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter Badge"/>
  <img src="https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white" alt="FastAPI Badge"/>
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white" alt="PostgreSQL Badge"/>
  <img src="https://img.shields.io/badge/scikit_learn-F7931E?style=for-the-badge&logo=scikit-learn&logoColor=white" alt="Scikit-Learn Badge"/>
</p>

Acuvia is a production-ready, clinical triage ecosystem built inside a monorepo workspace. It seamlessly pairs a high-performance cross-platform Flutter mobile client with an asynchronous FastAPI backend service, driven by a hybrid rule-based and machine learning diagnostic routing core.

---

## 📌 Table of Contents
1. [Tech Stack Matrix](#-tech-stack-matrix)
2. [High-Level Architecture](#-high-level-architecture)
3. [Repository Directory Structure](#-repository-directory-structure)
4. [Project Initialization & Prerequisites](#-project-initialization--prerequisites)
5. [Backend Setup (FastAPI)](#-backend-setup-fastapi)
6. [Frontend Setup (Flutter)](#-frontend-setup-flutter)
7. [Best Practices & Maintenance Checklist](#-best-practices--maintenance-checklist)

---

## 🛠️ Tech Stack Matrix

| Layer | Technology Component | Primary Libraries / Packages |
| :--- | :--- | :--- |
| **Frontend Mobile Client** | Flutter / Dart | Riverpod, GoRouter, Dio, Freezed, FlutterDotenv, Geolocator |
| **Backend Core Engine** | Python / FastAPI | Gunicorn, Uvicorn, Pydantic, SQLAlchemy, Slowapi, Loguru |
| **Artificial Intelligence** | Hybrid NLP & ML | Scikit-Learn (Random Forest), XGBoost, NLTK, Joblib |
| **Database & Migration** | Relational Ledger | PostgreSQL (`psycopg2-binary`), Alembic |
| **Infrastructure Proxy** | Containers & Networking | Nginx, Docker, Docker Compose |

---

## 📐 High-Level Architecture

*   **12-Factor App Principles:** System environment-driven variables cleanly decouple sensitive access keys and database credentials from logical deployment instances (`.env`).
*   **Dual-Layer Safety Triage Engine:** Implements a strict, deterministic keyword safety pattern for immediate life-threatening emergency symptoms, coupled with a probabilistic Random Forest NLP classifier fallback for standard evaluations.
*   **Explainable Artificial Intelligence (XAI):** Urgency evaluations are made transparent client-side by tracking exact clinical rule executions alongside structural mathematical feature signals extracted from the ML model pipeline.

---

## 📁 Repository Directory Structure

```text
acuvia/
├── README.md                     # Central documentation matrix
├── .gitignore                    # Global file exclusion configurations
├── .env.example                  # Structural template environment mapping
├── docker-compose.yml            # System docker service engine definitions
├── infra/                        # Infrastructure orchestration configurations
│   └── nginx/                    # Reverse proxy routing rules
│       └── nginx.conf
├── backend/                      # Python FastAPI core app
│   ├── pyproject.toml            # Poetry dependency structures
│   ├── alembic.ini               # Relational data schema controller settings
│   └── app/
│       ├── core/                 # Encryption pipeline, runtime logs, system configs
│       ├── db/                   # Table definitions, migration instances, data bridges
│       ├── schemas/              # Input/Output data typing rules (Pydantic contracts)
│       ├── ai/                   # NLP processors, training modules, model artifact assets
│       ├── api/                  # Application runtime interface gateways (v1 paths)
│       ├── services/             # Background logic engines (location maps, chat flows)
│       └── main.py               # Engine entrypoint script
└── frontend/                     # Multiplatform app codebases
    └── acuvia_app/               # Flutter mobile root layout
        ├── pubspec.yaml          # Flutter engine package tracking
        └── lib/
            ├── main.dart         # Entry execution target
            ├── core/             # Shared styling architectures, routing parameters
            ├── data/             # Models and data delivery repositories
            └── features/         # Presentation views and Riverpod state providers
```
---
 ## 📦 Project Initialization & Prerequisites
Before attempting local builds, verify you have configured your environment matching the foundational tooling below:

**Flutter SDK**: Stable Channel version installed globally.

**Python**: Runtime environment 3.11 or higher.

**Poetry**: Global python package initialization manager interface.

**PostgreSQL Instance**: Active running container or a native target engine instance.

⚠️ Repository Integrity: Ensure a .gitignore file exists at the root folder specifying __pycache__/ and *.joblib to prevent compiled cache and massive machine-learning model binaries from accidentally polluting your git stream history.

---

## 🐍 Backend Setup (FastAPI)
1. Dependency Ingestion & Package Sync
Bash
``` text
cd acuvia/backend
pipx install poetry # Alternative fallback: pip install poetry
poetry install
```
---
2. Prepare AI System Assets
Run the linguistic dependency utilities and seed generation vectors:

Bash
**Fetch essential text normalization dictionaries** 
```text
poetry run python -c "import nltk; nltk.download('wordnet'); nltk.download('omw-1.4'); nltk.download('stopwords')"
```
**Train the local engine and export standard serialized binary model binaries**
```text
poetry run python -m app.ai.train
```
💡 Artifact Verification: Make sure vectorizer.joblib and rfmodel.joblib are correctly generated and visible inside your app/ai/artifacts/ folder.

3. Database Schema Operations
Map your standard environmental credentials into your untracked root .env file matching the database config layer, then run migrations:

Bash
 **Apply structural delta mutations down to target active database**
```text
poetry run alembic upgrade head
```
4. Boot Web Micro-workers
Bash
``` text
poetry run uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
```
Local Interactive Documentation Swagger UI: http://localhost:8000/docs

---

## 📱 Frontend Setup (Flutter)
1. Ingest Libraries & Assets
Bash
```
cd ../../frontend/acuvia_app
```
flutter pub get
3. Generate Code Generation Components
Compile serialization rules, type bindings, and immutable class data models:

Bash
```
flutter pub run build_runner build --delete-conflicting-outputs
```
3. Target Execution Setup
Ensure you have an active emulator running, a web window, or a physical smartphone debugging node attached:

Bash
**Verify active listening processing engine nodes**
```
flutter devices
```

**Compile layout and launch code in hot-reload debug mode**
```
flutter run
```
## 📋 Best Practices & Maintenance Checklist
Database Schema Evolution: Whenever modifications occur inside backend models (app/db/models.py), immediately generate your blueprint change definitions via: poetry run alembic revision --autogenerate -m "Your description here", and apply changes using alembic upgrade head.

Secret Protection: Under no circumstances should raw secure authentication endpoints, JWT signing keys, or database access paths be written plainly into your codebase files. Maintain structural assets dynamically through context environment variables (.env).

Clean Architecture Strictness: Features should remain entirely self-contained. Do not cross-import view states between separate modules directly; proxy cross-boundary interactions cleanly through globally mapped Riverpod data providers.
'@ | Out-File -FilePath README.md -Encoding utf8
