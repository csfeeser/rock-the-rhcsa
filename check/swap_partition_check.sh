#!/bin/bash

# Check if the swap partition is active
if swapon --show | grep -q "/dev/sdb2"; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi
