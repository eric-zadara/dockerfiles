#!/bin/bash
IMAGE=$(awk '/^FROM/{a=$NF} END{print a}' Dockerfile)
docker pull --quiet "${IMAGE}" > /dev/null
docker run --rm -t "${IMAGE}" awx --version