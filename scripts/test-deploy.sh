#!/bin/bash

echo "Testing Hugo site build process..."

# Check if hugo is installed
if ! command -v hugo &> /dev/null; then
    echo "Hugo is not installed. Installing..."
    # This is meant for local testing, you might need to adapt based on your system
    echo "Please install hugo first: https://gohugo.io/getting-started/installing/"
    exit 1
fi

echo "Hugo version: $(hugo version)"

# Check if config file exists
if [ ! -f "hugo.toml" ]; then
    echo "hugo.toml not found!"
    exit 1
fi

echo "Configuration check passed."

# Attempt to build the site
echo "Building site..."
hugo --minify --verbose

if [ $? -eq 0 ]; then
    echo "Build succeeded!"
    echo "Your site files are in the 'public' directory."
    echo "You can serve it locally using: hugo server"
else
    echo "Build failed!"
    exit 1
fi

echo "Deployment test completed successfully!"
