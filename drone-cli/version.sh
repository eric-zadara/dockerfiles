#!/bin/bash
GITHUB_REPO="harness/drone-cli"
curl -sL "https://api.github.com/repos/${GITHUB_REPO}/releases/latest" | jq -r ".tag_name" | sed 's@^v@@g'
