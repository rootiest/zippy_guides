#!/bin/bash

# Get the current working directory
current_directory=$(pwd)

# Get the list of changed files
changed_files=$(git diff --name-only HEAD)

# If there are any changed files, commit them
if [ -n "$changed_files" ]; then
    git commit -m "Committing changes"
fi
