#!/bin/bash

# This script installs the pre-compiled binary for naabu.
# This version is more robust: it uses the GitHub API to find the
# exact download URL, bypassing potential redirect issues.

echo "Finding latest naabu release URL..."

# 1. Use the GitHub API to get release info
# 2. Use grep to find the line for the linux_amd64.zip file
# 3. Use awk to split the line by quotes (") and grab the 4th field, which is the URL
DOWNLOAD_URL=$(curl -s https://api.github.com/repos/projectdiscovery/naabu/releases/latest | \
                grep "browser_download_url.*linux_amd64.zip" | \
                awk -F '"' '{print $4}')

if [ -z "$DOWNLOAD_URL" ]; then
    echo "Error: Could not find naabu download URL."
    exit 1
fi

echo "Downloading from: $DOWNLOAD_URL"
# 4. Download the file from the direct URL
curl -L -o naabu.zip "$DOWNLOAD_URL"

echo "Installing binary..."
# 5. Unzip the binary
unzip naabu.zip
rm naabu.zip

# 6. Move the 'naabu' binary to a directory that is already in the system's PATH
# This makes it executable from anywhere
sudo mv naabu /usr/local/bin/

echo "Naabu installed to /usr/local/bin/naabu"

# You can add other apt-get installations here if needed
# sudo apt-get update
# sudo apt-get install -y nmap

