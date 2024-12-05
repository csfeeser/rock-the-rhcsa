#!/bin/bash

# Check if autofs is correctly configured for the NFS share
if sudo mount | grep -q "nfs-server.example.com:/srv/nfs"; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi
