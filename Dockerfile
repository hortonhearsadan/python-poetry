ARG PY_VERSION
ARG POETRY_VERSION

FROM python:${PY_VERSION}

LABEL maintainer "Mathieu Lemay <acidrain1@gmail.com>"

ENV POETRY_VERSION ${POETRY_VERSION}

RUN pip install pipx
RUN pipx install poetry==${POETRY_VERSION}

ENV PATH="/root/.local/bin:$PATH"
