.PHONY: check
check:
	pytest
	black .
	ruff check . --fix
	isort --check-only .

.PHONY: lint
lint:
	black .
	ruff check . --fix
	isort --profile black .
