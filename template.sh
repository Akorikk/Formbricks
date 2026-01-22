#!/bin/bash
set -e

PROJECT_NAME="formbricks-cli-seeder"

echo "Creating project: $PROJECT_NAME"

mkdir -p $PROJECT_NAME
cd $PROJECT_NAME

# Main entrypoint
touch main.py

# Source code structure
mkdir -p src/formbricks_cli
mkdir -p src/formbricks_cli/commands
mkdir -p src/formbricks_cli/core
mkdir -p src/formbricks_cli/services
mkdir -p src/formbricks_cli/utils

touch src/formbricks_cli/__init__.py
touch src/formbricks_cli/cli.py

# Commands
touch src/formbricks_cli/commands/__init__.py
touch src/formbricks_cli/commands/up.py
touch src/formbricks_cli/commands/down.py
touch src/formbricks_cli/commands/generate.py
touch src/formbricks_cli/commands/seed.py

# Core (config & models)
touch src/formbricks_cli/core/__init__.py
touch src/formbricks_cli/core/config.py
touch src/formbricks_cli/core/models.py

# Services
touch src/formbricks_cli/services/__init__.py
touch src/formbricks_cli/services/docker_service.py
touch src/formbricks_cli/services/llm_service.py
touch src/formbricks_cli/services/formbricks_api.py
touch src/formbricks_cli/services/data_store.py

# Utils
touch src/formbricks_cli/utils/__init__.py
touch src/formbricks_cli/utils/logger.py
touch src/formbricks_cli/utils/files.py

# Generated data output
mkdir -p generated_data

# Config files
touch requirements.txt
touch .env.example
touch .gitignore
touch README.md

echo "✅ Project structure created successfully."
