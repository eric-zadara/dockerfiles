#!/bin/bash
IMAGE=$(awk '/^FROM/{a=$NF} END{print a}' Dockerfile | sed 's@${CONTAINER_VERSION}@latest@g')
docker pull --quiet "${IMAGE}" > /dev/null
docker run --rm "${IMAGE}" awx --version
