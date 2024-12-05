#!/bin/bash

# Ensure the SELinux Boolean is disabled
setsebool -P container_manage_cgroup off

echo "Setup is complete. Begin your task!"

