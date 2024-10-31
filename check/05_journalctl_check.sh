#!/bin/bash

# Check if the file dasboot.txt exists and contains boot logs from journalctl
if [[ -f /home/student/dasboot.txt ]] && grep -q "Boot ID" /home/student/dasboot.txt; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi
