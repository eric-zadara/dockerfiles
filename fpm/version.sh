#!/bin/bash
GEM_PKG="fpm"
#curl -sL "https://rubygems.org/api/v1/versions/${GEM_PKG}.json" | jq -c --raw-output '[.[] | .number] | map(select(test("[A-Za-z]") | not)) | sort_by( split(".") | map(tonumber) ) | .[]'
curl -sL "https://rubygems.org/api/v1/versions/${GEM_PKG}/latest.json" | jq -c --raw-output '.version'
