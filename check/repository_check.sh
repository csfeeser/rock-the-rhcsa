#!/bin/bash

# Check if the EPEL repository is enabled
if yum repolist enabled | grep -q "epel"; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi
