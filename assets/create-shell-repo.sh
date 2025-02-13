#!/bin/bash

# Check arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_repo> <destination_repo>"
    exit 1
fi

SOURCE_REPO="$1"
DEST_REPO="$2"

# Convert Windows paths to Git Bash paths if needed
SOURCE_REPO=$(echo "$SOURCE_REPO" | sed 's/\\/\//g' | sed 's/://')
DEST_REPO=$(echo "$DEST_REPO" | sed 's/\\/\//g' | sed 's/://')

# Ensure source_repo exists
if [ ! -d "$SOURCE_REPO/.git" ]; then
    echo "Error: Source repository not found or not a git repository"
    exit 1
fi

# Create and prepare destination repository
rm -rf "$DEST_REPO"
mkdir -p "$DEST_REPO"
cd "$DEST_REPO"
git init

# Switch to develop branch in source
cd "$SOURCE_REPO"
git checkout develop

# Create main branch in destination
cd "$DEST_REPO"
git checkout -b main

# Get all commits in chronological order from develop branch
COMMITS=$(cd "$SOURCE_REPO" && git log --reverse --format="%H" develop)

# Process each commit
for COMMIT in $COMMITS; do
    # Get commit metadata
    COMMIT_DATA=$(cd "$SOURCE_REPO" && git log -1 --format="%an%n%ae%n%aI%n%s" $COMMIT)
    
    # Parse commit data
    AUTHOR_NAME=$(echo "$COMMIT_DATA" | sed -n '1p')
    AUTHOR_EMAIL=$(echo "$COMMIT_DATA" | sed -n '2p')
    AUTHOR_DATE=$(echo "$COMMIT_DATA" | sed -n '3p')
    COMMIT_MSG=$(echo "$COMMIT_DATA" | sed -n '4p')
    
    # Create empty commit with original metadata
    export GIT_AUTHOR_NAME="$AUTHOR_NAME"
    export GIT_AUTHOR_EMAIL="$AUTHOR_EMAIL"
    export GIT_AUTHOR_DATE="$AUTHOR_DATE"
    export GIT_COMMITTER_NAME="$AUTHOR_NAME"
    export GIT_COMMITTER_EMAIL="$AUTHOR_EMAIL"
    export GIT_COMMITTER_DATE="$AUTHOR_DATE"
    
    git commit --allow-empty -m "$COMMIT_MSG"
done

echo "Shell repository created successfully at $DEST_REPO with develop branch history"