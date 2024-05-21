#!/bin/bash

#Go in Downloads
cd /home/aditya/Downloads

# SSH into the EC2 instance and execute commands remotely
ssh -i "aws.pem" ubuntu@ec2-13-127-202-204.ap-south-1.compute.amazonaws.com '
  sudo apt update
  sleep 10s
  sudo apt install nfs-kernel-server -y
  sudo mkdir /shared_folder
  sudo chown nobody:nogroup /shared_folder

  # Use a temporary file for /etc/exports
  echo "/shared_folder *(rw,sync,no_subtree_check)" | sudo tee -a /tmp/exports_tmp
  sudo mv /tmp/exports_tmp /etc/exports

  sudo systemctl restart nfs-kernel-server
'


