#!/bin/bash

# Go to Downloads 
cd /home/aditya/Downloads

# Connect to the EC2 instance and run commands
    ssh -i "N.virginia.pem" ubuntu@ec2-52-87-172-125.compute-1.amazonaws.com '
    sudo apt update &&
    sleep 5s        
    sudo apt install apache2 -y &&
    sleep 5s        
    sudo systemctl restart apache2 &&
    cd /var/www/html &&
    sudo rm -rvf * &&
    sleep 8s
    sudo git clone https://github.com/D-Coder135/Assignment4_Fullstack.git
    sleep 5s
    cd Assignment4_Fullstack &&
    sudo mv -vf * /var/www/html/ &&
    sudo systemctl restart apache2
  '

# Open the website in Google Chrome
google-chrome  http://52.87.172.125

