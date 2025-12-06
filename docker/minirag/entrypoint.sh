#!/bin/bash
set -e

echo "Running database migrations..."
cd /app/src/models/db_schemes/minirag/
alembic upgrade head
cd /app

exec "$@"
