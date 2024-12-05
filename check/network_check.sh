#!/bin/bash

# Check hostname
if [[ $(hostnamectl hostname) == "millennium-falcon" ]]; then
    # Check IP address, gateway, and DNS
    if nmcli connection show dummy0 | grep -q "192.168.50.100" &&
       nmcli connection show dummy0 | grep -q "192.168.50.1" &&
       nmcli connection show dummy0 | grep -q "8.8.8.8"; then
        echo -e "\e[32mSUCCESS!\e[0m"
    else
        echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
    fi
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi
