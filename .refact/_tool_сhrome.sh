#!/bin/bash

# The purpose of this script is to check if Chrome or Brave Browser executables are available in the Applications directory
# If not available, it will prompt the user to install them. It will then ask the user which one they want to use and create an alias test-chrome for that binary.

# Define potential base paths using the HOME environment variable
BASE_PATH="/Applications"

# Define potential paths for Chrome and Brave
CHROME_PATH=$(find "$BASE_PATH" -type f -path "*/Contents/MacOS/*" -name "Google Chrome" | head -n 1)

# check if chrome or brave is installed
if [ -n "$CHROME_PATH" ]; then
    echo "Chrome executable found: $CHROME_PATH"
    "$CHROME_PATH" --version
    CHROME_BINARY="$CHROME_PATH"
else
    echo "Google Chrome is not installed"
    echo "Please install manually"
    exit 1
fi

