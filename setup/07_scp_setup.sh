#!/bin/bash

# Check if wget is installed, install it if not
if ! command -v wget &> /dev/null; then
    sudo yum install -y wget || sudo apt-get install -y wget
fi

# Download the file to /home/student/longfile.txt
wget -O /home/student/longfile.txt "https://github.com/v0re/dirb/raw/refs/heads/master/wordlists/big.txt"

echo "Setup complete: longfile.txt downloaded to /home/student."

