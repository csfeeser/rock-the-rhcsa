#!/bin/bash

# Set SELinux to permissive in config file
sudo sed -i 's/^SELINUX=.*/SELINUX=permissive/' /etc/selinux/config

# Temporarily apply permissive mode
sudo setenforce 0

echo "Setup complete: SELinux set to permissive."
