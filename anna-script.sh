#!/bin/bash

# Fetch all tags and unshallow the repository test
git fetch --unshallow
git fetch --tags

# Get the most recent git tag and assign it to APP_VERSION
export APP_VERSION=$(git tag --sort=-creatordate | head -n 1)

# Print the APP_VERSION to verify
echo "APP_VERSION=$APP_VERSION"

# In a real scenario, you might use this variable in your build process
# For demonstration, we'll just echo a message using the variable
echo "Building app version: $APP_VERSION"
