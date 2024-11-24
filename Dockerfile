FROM python:3.8-slim

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY pyproject.toml .

ENV UV_SYSTEM_PYTHON=1

RUN uv pip install -r pyproject.toml

COPY ./src /app

WORKDIR /app

CMD ["python", "hello.py"]

# with .venv
# COPY ./uv.lock /uv.lock
# RUN uv sync --frozen
# CMD ["uv", "run", "hello.py"]
