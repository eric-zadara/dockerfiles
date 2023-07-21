#!/bin/bash
IMAGE=$(awk '/^FROM/{a=$NF} END{print a}' Dockerfile | sed 's@${CONTAINER_VERSION}@latest@g')
docker pull --quiet "${IMAGE}" > /dev/null
docker run --rm "${IMAGE}" bash -c 'source /var/lib/awx/venv/awx/bin/activate && pip list 2>&- | awk "/^awx/{print \$NF}"'
