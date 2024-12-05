#!/bin/bash

# Check the SELinux Boolean value
if getsebool container_manage_cgroup | grep -q "on"; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi
