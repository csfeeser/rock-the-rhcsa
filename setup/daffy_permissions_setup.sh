#!/bin/bash

# Ensure the user "daffy" exists
if ! id "daffy" &>/dev/null; then
    echo "Creating user daffy..."
    sudo useradd daffy
fi

# Ensure home directory exists
sudo mkdir -p /home/daffy
sudo chown daffy:daffy /home/daffy

# Ensure the setting is in daffy's profile (use tee for proper sudo redirection)
echo "umask 027" | sudo tee -a /home/daffy/.bashrc > /dev/null
echo "umask 027" | sudo tee -a /home/daffy/.bash_profile > /dev/null
sudo chown daffy:daffy /home/daffy/.bashrc /home/daffy/.bash_profile

# Also apply globally for redundancy
echo 'if [ "$(id -un)" == "daffy" ]; then umask 027; fi' | sudo tee /etc/profile.d/daffy_umask.sh > /dev/null
sudo chmod +x /etc/profile.d/daffy_umask.sh

echo "Setup complete!"
