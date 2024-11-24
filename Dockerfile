FROM python:3.8-slim

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY ./pyproject.toml /pyproject.toml

COPY ./uv.lock /uv.lock

RUN uv sync --frozen

COPY ./src /app

WORKDIR /app

CMD ["uv", "run", "hello.py"]
