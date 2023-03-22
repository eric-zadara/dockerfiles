#!/bin/bash
IMAGE=$(awk '/^FROM/{a=$NF} END{print a}' Dockerfile)
docker pull --quiet "${IMAGE}" > /dev/null
docker run --rm "${IMAGE}" python3 -u /usr/local/bin/ansible-builder --version 2>/dev/null
