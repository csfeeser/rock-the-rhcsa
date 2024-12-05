#!/bin/bash

# Check if the partition is mounted on /mydata
if mount | grep -q "/mydata"; then
    # Check if the filesystem is vfat and label is correct
    if blkid | grep -q "*vfat"; then
        echo -e "\e[32mSUCCESS!\e[0m"
    else
        echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
    fi
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi
