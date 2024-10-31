#!/bin/bash

# Install httpd if not installed
sudo dnf install -y httpd

# Update httpd configuration to listen on port 82
sudo sed -i 's/^Listen 80$/Listen 82/' /etc/httpd/conf/httpd.conf

# Create the index.html file with the specified content
echo "Wubba Lubba Dub Dub!" | sudo tee /var/www/html/index.html

# Start and enable httpd
sudo systemctl enable --now httpd

echo "Setup complete: httpd configured to listen on port 82 with 'Wubba Lubba Dub Dub!' content."

