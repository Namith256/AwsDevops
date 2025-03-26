#!/bin/bash

WATCHED_DIR="/e/AwsDevops/projects/Github/AwsDevops"

while true; do
    sleep 5 
    cd "$WATCHED_DIR" || exit

    if [[ -n $(git status --porcelain) ]]; then
        git add .
        git commit -m "Auto-commit on $(date)"
        echo "Changes committed!"
    fi
done
