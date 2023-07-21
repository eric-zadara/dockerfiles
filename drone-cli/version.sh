#!/bin/bash
GITHUB_REPO="harness/drone-cli"
RESULT=$(curl -sL "https://api.github.com/repos/${GITHUB_REPO}/releases/latest" | jq -r ".tag_name" | sed 's@^v@@g')
if [[ -n "${RESULT}" && "${RESULT}" != "null" ]]; then
	echo "${RESULT}"
else
	exit 1
fi
