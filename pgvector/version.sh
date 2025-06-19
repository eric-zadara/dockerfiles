#!/bin/bash
DOCKER_IMAGE=$(awk '/^FROM/{a=$NF} END{print a}' Dockerfile)
docker pull --quiet "${DOCKER_IMAGE}" > /dev/null
PG_VERSION=$(docker run --entrypoint /bin/sh --rm "${DOCKER_IMAGE}" -c "/usr/bin/psql -V | awk '{print \$3}'")
PGVECTOR_VERSION=$(docker run --entrypoint /bin/sh --rm "${DOCKER_IMAGE}" -c "awk '/default_version/{print \$NF}' /usr/share/postgresql/${PG_VERSION%.*}/extension/vector.control | tr -d \"'\"")
[[ -z "${PG_VERSION}" || -z "${PGVECTOR_VERSION}" ]] && exit 1
echo "${PG_VERSION}-${PGVECTOR_VERSION}"
