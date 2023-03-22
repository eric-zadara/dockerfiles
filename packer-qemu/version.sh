#!/bin/bash
GITHUB_REPO="hashicorp/packer"
curl -sL "https://api.github.com/repos/${GITHUB_REPO}/releases/latest" | jq -r ".tag_name" | sed 's@^v@@g' | grep -v '^nightly$'
