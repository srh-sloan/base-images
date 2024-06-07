FROM python:3.10-bullseye as base

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt

FROM base as dev-base
WORKDIR /app
COPY requirements-dev.txt requirements-dev.txt
RUN pip install -r requirements-dev.txt

CMD sleep infinity