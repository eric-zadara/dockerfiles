#!/bin/bash
DOCKERFILE=Dockerfile.ubuntu-22.04
LATEST_STRING=$(awk -F '=' '/^ARG CONTAINER_VERSION=/{print $NF}' ${DOCKERFILE})
IMAGE=$(awk '/^FROM/{a=$NF} END{print a}' $DOCKERFILE | sed "s@\${CONTAINER_VERSION}@${LATEST_STRING}@g")
docker pull --quiet "${IMAGE}" > /dev/null
VERSION=$(docker run --entrypoint /bin/sh --rm "${IMAGE}" -c "/runnertmp/bin/Runner.Listener --version")
if [[ -n "${VERSION}" ]]; then
	echo "${VERSION}"
fi
