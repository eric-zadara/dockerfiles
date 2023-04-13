#!/bin/bash
GITHUB_REPO="mikefarah/yq"
curl -sL "https://api.github.com/repos/${GITHUB_REPO}/releases/latest" | jq -r ".tag_name" | sed 's@^v@@g'
