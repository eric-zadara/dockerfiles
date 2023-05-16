FROM python:3-alpine
ARG CONTAINER_VERSION
RUN \
  apk --no-cache -q add bash git && \
  apk --no-cache -q add gcc musl-dev && \
  pip3 install --no-cache-dir --upgrade pip && \
  pip3 install --no-cache-dir "ansible-lint==${CONTAINER_VERSION}" -q && \
  apk -q del gcc musl-dev
