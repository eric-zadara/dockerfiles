FROM python:3-alpine
ARG CONTAINER_VERSION
RUN \
  apk --no-cache add bash git && \
  pip3 install --no-cache-dir "ansible-lint==${CONTAINER_VERSION}" -q
