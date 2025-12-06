#!/bin/bash

# Install Python package in editable mode
pip install -e .

# Run FastAPI app
uvicorn main:app --reload --host 0.0.0.0 --port 8000

# Note: to run app 'sh scripts/run_app.sh'
