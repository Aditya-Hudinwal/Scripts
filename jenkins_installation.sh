#!/bin/bash

# Update package index
sudo apt update

# Install Java
sudo apt install default-jdk -y

# Add Jenkins repository key and install Jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins to start on boot
sudo systemctl enable jenkins

# Check Jenkins status
sudo systemctl status jenkins

# Output initial admin password
echo "Initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

