#!/bin/bash

# Check if enough arguments are provided
if [ "$#" -lt 3 ]; then
    echo "Usage: $0 <name> <email> <commit message>"
    exit 1
fi

# Assign arguments to variables
GIT_NAME="$1"
GIT_EMAIL="$2"
COMMIT_MSG="$3"

# Temporarily set Git identity and commit
GIT_COMMITTER_NAME="$GIT_NAME" GIT_COMMITTER_EMAIL="$GIT_EMAIL" \
GIT_AUTHOR_NAME="$GIT_NAME" GIT_AUTHOR_EMAIL="$GIT_EMAIL" \
git commit -m "$COMMIT_MSG"

