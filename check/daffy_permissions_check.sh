#!/bin/bash

# Check daffy's umask value
if grep -q "umask 002" /home/daffy/.bashrc; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi
