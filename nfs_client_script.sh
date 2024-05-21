#!/bin/bash

#Go in Downloads
cd /home/aditya/Downloads

#SSH into the EC2 instance and execute commands remotely.
ssh -i "aws.pem" ubuntu@ec2-13-200-222-151.ap-south-1.compute.amazonaws.com '
sudo apt update
sudo apt install nfs-common -y
sudo mkdir /mnt/nfs
sudo mount 13.127.202.204:/shared_folder /mnt/nfs
'
