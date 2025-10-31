#!/bin/bash

# This is the main script that runs your commands.

# We must add the Go bin directory to our PATH
# so the runner can find the 'naabu' executable
export PATH=$PATH:$(go env GOPATH)/bin

echo "Starting Naabu scan"

# This is the command you provided.
# - It reads from 'input/ip-list.txt'.
# - It saves the output to 'results/ports.txt'.
# - The 'results' directory will be automatically committed to the repo.

naabu -list ip.txt -p 1-65535 -silent -j -o results.json -c 100 -rate 2000 -retries 1 -timeout 1000

echo "Scan complete. Results saved to ports.txt"

# You can add other commands here. For example:
# echo "Running nmap on results..."
# nmap -iL results/ports.txt -oN results/nmap_scan.txt
