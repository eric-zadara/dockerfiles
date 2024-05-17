#!/bin/bash
DOCKERFILE=Dockerfile
LATEST_STRING=$(awk -F '=' '/^ARG CONTAINER_VERSION=/{print $NF}' ${DOCKERFILE})
IMAGE=$(awk '/^FROM/{a=$NF} END{print a}' $DOCKERFILE | sed "s@\${CONTAINER_VERSION}@${LATEST_STRING}@g")
docker pull --quiet "${IMAGE}" > /dev/null
VERSION=$(docker run --entrypoint /bin/sh --rm "${IMAGE}" -c "/home/runner/bin/Runner.Listener --version | awk '!/^\[/'")
if [[ -n "${VERSION}" ]]; then
	echo "${VERSION}"
fi
