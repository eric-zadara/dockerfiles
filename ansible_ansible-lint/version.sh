#!/bin/bash
PIP_PKG="ansible-lint"
curl -sL "https://pypi.org/pypi/${PIP_PKG}/json" | jq -c --raw-output '.releases | keys_unsorted | map(select(test("[A-Za-z]") | not)) | max_by( split(".") | map(tonumber) )'
