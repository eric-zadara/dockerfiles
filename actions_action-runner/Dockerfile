ARG CONTAINER_VERSION=latest
FROM ghcr.io/actions/actions-runner:${CONTAINER_VERSION}
USER root
RUN \
  apt-get update -y && \
  apt-get install -y curl unzip jq wget && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" && \
  unzip -q /tmp/awscliv2.zip -d /tmp && \
  /tmp/aws/install && \
  rm -r /tmp/aws /tmp/awscliv2.zip
USER runner
