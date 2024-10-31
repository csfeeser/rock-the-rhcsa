#!/bin/bash

# Prepare /dev/xvdc by creating a physical volume
pvcreate /dev/xvdc

# Create a volume group named vg-jedi on /dev/xvdc
vgcreate vg-jedi /dev/xvdc

# Create a logical volume named lv-yoda with a small initial size on vg-jedi
lvcreate -L 1G -n lv-yoda vg-jedi

# Format lv-yoda with ext4 filesystem
mkfs.ext4 /dev/vg-jedi/lv-yoda

echo "Setup complete: Physical volume on /dev/xvdc, volume group 'vg-jedi', and logical volume 'lv-yoda' created."

