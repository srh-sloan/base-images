FROM python:3.10-bullseye as fsd-base

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt

FROM fsd-base as fsd-base-dev
WORKDIR /app
COPY requirements-dev.txt requirements-dev.txt
RUN pip install -r requirements-dev.txt
RUN pip install pip-tools
