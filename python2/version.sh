#!/bin/bash
DOCKER_IMAGE=$(awk '/^FROM/{a=$NF} END{print a}' Dockerfile)
docker pull --quiet "${DOCKER_IMAGE}" > /dev/null
PY_VERSION=$(docker run --entrypoint /bin/sh --rm "${DOCKER_IMAGE}" -c "apt-get update -y > /dev/null 2>&1 && apt-get install -f -y python2.7 > /dev/null 2>&1 && python2.7 --version | awk '{print \$NF}'")
[[ -z "${PY_VERSION}" ]] && exit 1
echo "${PY_VERSION}"
