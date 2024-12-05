#!/bin/bash

# Check if the sudoers entry exists
if sudo -lU neo | grep -q "NOPASSWD: /bin/systemctl restart httpd"; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi

