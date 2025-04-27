#!/bin/bash
set -e

# Check that /dev/sdb exists
if [ ! -b /dev/sdb ]; then
    echo "Error: /dev/sdb does not exist."
    exit 1
fi

# Partition /dev/sdb: Create an msdos label and a 1GB primary partition
sudo parted --script /dev/sdb mklabel msdos
sudo parted --script /dev/sdb mkpart primary fat32 1MiB 1025MiB

# Inform the OS of partition table changes and wait for /dev/sdb1 to appear
sudo partprobe /dev/sdb
sleep 2

# Format the new partition with the vfat filesystem
sudo mkfs.vfat -F 32 /dev/sdb1

# Create the mount point if it does not exist
sudo mkdir -p /mydata

# Retrieve the UUID of the new partition
UUID=$(sudo blkid -s UUID -o value /dev/sdb1)
if [ -z "$UUID" ]; then
    echo "Error: Could not retrieve UUID for /dev/sdb1."
    exit 1
fi

# Backup the current /etc/fstab
sudo cp /etc/fstab /etc/fstab.bak

# Add a persistent mount entry to /etc/fstab using the partition's UUID
echo "UUID=$UUID /mydata vfat defaults 0 0" | sudo tee -a /etc/fstab > /dev/null

# Mount all filesystems mentioned in /etc/fstab
sudo mount -a

#Reload systemd
sudo systemctl daemon-reload

echo "Setup complete!"
