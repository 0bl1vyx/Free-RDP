#!/bin/bash

# This script installs the pre-compiled binary for naabu.
# This is much faster and avoids the C-dependency error.

echo "Downloading latest naabu binary..."
# We download the latest linux_amd64.zip file from the official releases
curl -L -o naabu.zip "https://github.com/projectdiscovery/naabu/releases/latest/download/naabu_linux_amd64.zip"

echo "Installing binary..."
# Unzip the binary
unzip naabu.zip
rm naabu.zip

# Move the 'naabu' binary to a directory that is already in the system's PATH
# This makes it executable from anywhere
sudo mv naabu /usr/local/bin/

echo "Naabu installed to /usr/local/bin/naabu"

# You can add other apt-get installations here if needed
# sudo apt-get update
# sudo apt-get install -y nmap

