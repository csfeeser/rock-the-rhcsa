#!/bin/bash

# Directory to check
DIR="/root/findresults"

# Check if directory exists
if [ -d "$DIR" ]; then
    # Count the number of files in the directory
    FILE_COUNT=$(sudo find "$DIR" -maxdepth 1 -type f | wc -l)

    # Check if the count is between 4 and 5
    if [ "$FILE_COUNT" -ge 8 ] && [ "$FILE_COUNT" -le 9 ]; then
        echo -e "\e[32mSUCCESS!\e[0m"
        exit 0
    else
        echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
        exit 1
    fi
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
    exit 2
fi
