#!/bin/bash

# Check if lv-yoda exists on vg-jedi and has a size of approximately 5G
lv_size=$(lvdisplay /dev/vg-jedi/lv-yoda | grep -Po '(?<=LV Size\s*).*' | awk '{print int($1)}')

if [[ $lv_size -eq 5 ]]; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi

