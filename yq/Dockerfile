FROM alpine:3
ARG CONTAINER_VERSION
RUN \
  apk --no-cache add bash wget jq git && \
  wget https://github.com/mikefarah/yq/releases/download/v${CONTAINER_VERSION}/yq_linux_amd64 -O /usr/local/bin/yq && \
  chmod +x /usr/local/bin/yq
