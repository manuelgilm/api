FROM python:3.12-slim
LABEL maintainer="@manuelgil"
RUN mkdir -p api
WORKDIR /api
COPY . /api
RUN pip install poetry
RUN poetry install
CMD ["poetry", "run", "fastapi", "dev", "api", "--host", "0.0.0.0", "--port", "8000"]
