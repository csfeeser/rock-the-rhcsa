#!/bin/bash

# Check if the logical volume lv-spock exists on vg-starfleet and is formatted with xfs
if lvdisplay /dev/vg-starfleet/lv-spock &> /dev/null && \
   [[ $(lsblk -f /dev/vg-starfleet/lv-spock | awk 'NR==2 {print $2}') == "xfs" ]]; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi

