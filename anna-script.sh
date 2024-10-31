#!/bin/bash

# Fetch all tags and unshallow the repository
git fetch --prune --unshallow

git fetch -t 

# Get the most recent git tag and assign it to APP_VERSION
export APP_VERSION=$(git describe --tags)

# Print the APP_VERSION to verify
echo "APP_VERSION=$APP_VERSION"

# In a real scenario, you might use this variable in your build process
# For demonstration, we'll just echo a message using the variable
echo "Building app version: $APP_VERSION"
