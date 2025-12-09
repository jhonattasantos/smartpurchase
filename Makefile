# Makefile for the smartPurchase project

.DEFAULT_GOAL := help
.PHONY: help up down test lint format install

# ====================================================================================
# HELP
# ====================================================================================

help: ## ✨ Exibe esta mensagem de ajuda
	@echo "Comandos disponíveis:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%%-20s\033[0m %%s\n", $$1, $$2}'

# ====================================================================================
# DOCKER
# ====================================================================================

up: ## 🚀 Constrói e inicia os contêineres Docker
	docker-compose up --build

down: ## 🛑 Para e remove os contêineres Docker
	docker-compose down

# ====================================================================================
# DEVELOPMENT & TESTING
# ====================================================================================

install: ## 📦 Instala as dependências de desenvolvimento e teste
	uv pip install -e ."[test,dev]"

test: ## 🧪 Executa os testes com pytest
	uv run pytest

lint: ## 🎨 Verifica o estilo e a qualidade do código com ruff
	uv run ruff check .

format: ## 💅 Formata o código com ruff
	uv run ruff format .

