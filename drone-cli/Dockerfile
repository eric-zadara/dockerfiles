FROM alpine:3
ARG CONTAINER_VERSION
RUN \
  apk --no-cache add bash curl jq git && \
  curl -s -L https://github.com/harness/drone-cli/releases/download/v${CONTAINER_VERSION}/drone_linux_amd64.tar.gz | tar zx && \
  mv drone /usr/local/bin/drone && \
  chmod +x /usr/local/bin/drone
