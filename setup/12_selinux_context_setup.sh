#!/bin/bash

# Create the service file with incorrect context
touch /etc/systemd/system/container-pikachu.service

# Set an incorrect SELinux context type for demonstration
chcon -t var_t /etc/systemd/system/container-pikachu.service

echo "Setup complete: Service file created with incorrect SELinux context."

