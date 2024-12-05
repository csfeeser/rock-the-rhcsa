#!/bin/bash

# Check if the directory exists and has the correct permissions
if [[ -d /home/student/caveofwonders ]] &&
   [[ $(stat -c "%A %G" /home/student/caveofwonders) == "drwxrws--- agrabah" ]] &&
   [[ $(stat -c "%a" /home/student/caveofwonders) == "2770" ]]; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi

