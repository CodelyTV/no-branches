#!/usr/bin/env bash

GITHUB_API_URI="https://api.github.com"
GITHUB_API_HEADER="Accept: application/vnd.github.v3+json"

github::delete_ref() {
  local -r ref=$1

  curl -sSL \
    -H "Authorization: token $GITHUB_TOKEN" \
    -H "$GITHUB_API_HEADER" \
    -X DELETE \
    "$GITHUB_API_URI/repos/$GITHUB_REPOSITORY/git/$ref"
 }
