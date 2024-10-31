#!/bin/bash

# Check if the volume group vg-starfleet exists and has a size of approximately 5G
if vgdisplay vg-starfleet &> /dev/null && \
   [[ $(vgdisplay vg-starfleet | grep -Po '(?<=Size:)[ ]*[\d.]+') =~ ^5(\.0*)?$ ]]; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi

