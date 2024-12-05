#!/bin/bash

# Create the user 'shrek' if it does not already exist
if ! id "shrek" &>/dev/null; then
    useradd shrek
    echo "User 'shrek' has been created."
else
    echo "User 'shrek' already exists."
fi

# Set a password for 'shrek' (to keep it simple, set it to 'shrek')
echo "shrek:shrek" | chpasswd

echo "Setup is complete. Begin your task!"
