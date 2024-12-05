#!/bin/bash

# Check if the target directory exists
if [[ ! -d /root/findresults ]]; then
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
    exit 1
fi

# Check if the correct files owned by 'frank' are present in /root/findresults
EXPECTED_FILES=$(sudo find / -user frank 2>/dev/null)
COPIED_FILES=$(sudo ls /root/findresults 2>/dev/null)

if [[ "$EXPECTED_FILES" == "$COPIED_FILES" ]]; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi
