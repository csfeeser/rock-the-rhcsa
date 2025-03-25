#!/bin/bash

# Check if partition /dev/sdb1 exists
if [ ! -b /dev/sdb1 ]; then
    echo -e "\e[31mNO PASS- /dev/sdb1 does not exist!\e[0m"
    exit 1
fi

# Check if /mydata is mounted with the vfat filesystem
if ! mount | grep -q "on /mydata type vfat"; then
    echo -e "\e[31mNO PASS- /mydata is not mounted with vfat filesystem!\e[0m"
    exit 1
fi

# Check if /etc/fstab contains a persistent mount entry for /mydata with vfat
if ! grep -q "[[:space:]]/mydata[[:space:]]vfat" /etc/fstab; then
    echo -e "\e[31mNO PASS- /etc/fstab does not contain the persistent mount entry for /mydata!\e[0m"
    exit 1
fi

echo -e "\e[32mSUCCESS!\e[0m"
