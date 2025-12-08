# mini-rag ⚡️

A minimal, developer-friendly Retrieval-Augmented Generation (RAG) example for building question-answering systems over documents. This repo contains a compact FastAPI service, simple vector store integrations, and utilities to help you experiment with RAG end-to-end.

## ✨ Introduction

mini-rag is designed as a learning and prototype project to demonstrate how to combine retrieval from local/document stores with large language models for accurate, grounded question answering. It focuses on clarity and simplicity so developers can quickly iterate and adapt components.

Key goals:
- Lightweight, easy-to-read codebase
- Plug-and-play vector DB and LLM backends
- Useful starting point for experiments or demos

## 🚀 Features

- Small FastAPI application exposing an API for question answering
- Document ingestion and chunking support
- Vector database integration (local / Qdrant example present and PGVector)
- Simple controllers and models to illustrate RAG components
- Docker compose for quick local infrastructure

## 📁 Project Structure

Top-level files and folders you'll interact with:

- `main.py`: FastAPI app entrypoint.
- `requirements.txt` / `pyproject.toml`: Python dependencies.
- `docker/`: Docker Compose and service definitions for local deployment.
- `src/controllers/`: Request controllers (API business logic).
- `src/models/`: Data models for assets, chunks, and projects.
- `src/stores/`: Vector DB and storage adapters.
- `src/helpers/config.py`: Configuration utilities and environment handling.
- `assets/` and `files/`: Example data directories used for ingestion and testing.

Explore the `src/` package for the implementation details (controllers, stores, utils).

## 🧰 Installation

These instructions assume you have Python 3.8+ and pip installed. Conda users are welcome.

1) (Optional) Create a virtual environment (recommended):

```powershell
python -m venv .venv; .\.venv\Scripts\Activate.ps1
```

2) Install dependencies:

```powershell
pip install -r requirements.txt
```

3) Copy environment example and set variables:

```powershell
copy .env.example .env
# Then open .env and set values like OPENAI_API_KEY
```

Note: If you plan to use Docker / Qdrant, make sure to update `docker/.env` accordingly.

## 🧭 Quick Start / Usage

There are two common ways to run the project: locally (development) or with Docker (infrastructure).

### Local development (FastAPI)

Run the app with Uvicorn:

```powershell
# from repository root
uvicorn main:app --reload --host 0.0.0.0 --port 5000
```

Open the interactive API docs at: `http://localhost:5000/docs`

### Using Docker Compose (optional)

Start services defined in `docker/docker-compose.yml` (example: Qdrant, Redis, etc.):

```powershell
cd docker; copy .env.example .env; docker compose up -d
```

Then run the FastAPI app (either in a container or locally) and configure the vector DB connection in `.env`.

## 🛠 Development

- Code style: follow the existing style in `src/` (PEP8-ish).
- Add unit tests near related modules if you add new features.
- Use small, focused commits and open a PR against `main`.

Helpful commands:

```powershell
# run linters (if configured)
# run tests (if tests are present): pytest
```

## 📜 License

This repository does not include a license file by default. If you want to release the project, a common choice is the MIT License.

Add a `LICENSE` file at the repo root to make the license explicit. Example badge at the top assumes `MIT`.

## 🧾 Extras & Notes

- Environment variables: ensure `OPENAI_API_KEY` (or other LLM keys) are set before making API calls.
- Vector DB: the repository contains an example `assets/databases/qdrant_db` folder, useful as a reference for local testing.
- If you plan to deploy, prefer using secret-managed env vars (not a checked-in `.env`).

