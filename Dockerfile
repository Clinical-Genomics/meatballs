# Docker file for local development
FROM python:3.8-slim

COPY . .

RUN pip install -r requirements.txt -e .

ENTRYPOINT ["mkdocs", "serve"]
