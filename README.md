uv init
uv add requests
uv remove requests
uv tree
uv sync
uv venv
uv run hello.py

docker build --tag uvtest .
docker run --rm uvtest
docker run -it uvtest bash
