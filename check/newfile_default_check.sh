#!/bin/bash

# Create a test user to check for NEWFILE in their home directory
sudo useradd -m testuserhonka 2>/dev/null
if [[ -f /home/testuserhonka/NEWFILE ]]; then
    sudo userdel -r testuserhonka
    echo -e "\e[32mSUCCESS!\e[0m"
else
    sudo userdel -r testuserhonka
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi