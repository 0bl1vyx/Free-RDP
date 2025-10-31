#!/bin/bash

# This script installs the tools needed by run.sh.
# It's run by the GitHub Action before the main script.

# You mentioned `apt install naabu` for your Debian system.
# In the GitHub runner, it's often more reliable to install
# Go-based tools directly using 'go install'.

echo "Installing naabu..."
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

# Add any other installations here, for example:
# sudo apt-get update
# sudo apt-get install -y nmap
