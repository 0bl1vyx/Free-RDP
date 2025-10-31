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

naabu -l ip.txt -p 80,443,21,22,23,25,53,69,110,111,135,137-139,161,389,445,465,512-514,587,873,1099,1433,1521,2000,2049,2083,2087,2096,2375,2376,3000,3128,3306,3389,4000,4444,4505,4506,5000,5001,5432,5601,5800,5900,5984,5985,5986,6000-6063,6379,6443,7001,8000,8001,8008,8080,8081,8086,8181,8443,8500,8888,9000,9042,9090,9092,9200,9300,9443,10000,10250,11211,15672,27017 | sort -u > ports.txt

echo "Scan complete. Results saved to ports.txt"

# You can add other commands here. For example:
# echo "Running nmap on results..."
# nmap -iL results/ports.txt -oN results/nmap_scan.txt
