#!/bin/sh -l

merge_commits=$(git rev-list --merges "$GITHUB_BASE_REF".."$GITHUB_HEAD_REF")

if [ -n "$merge_commits" ]; then
  echo "Error: merge commits found in $GITHUB_BASE_REF..$GITHUB_HEAD_REF"

  for merge_commit in $merge_commits; do
    echo "$merge_commit"
  done

  exit 1
fi
