#!/bin/bash

# Check if the SELinux context for the file is set to etc_t
if [[ $(ls -Z /etc/systemd/system/container-pikachu.service | awk '{print $3}') == "etc_t" ]]; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi

