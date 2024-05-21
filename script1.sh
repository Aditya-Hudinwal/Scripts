#!/bin/bash
read -p ' enter username: ' u
useradd $u
echo " $:bharat" |chpasswd
cp -rvf /etc/skel/. /home/$u
sleep 4s
usermod -s /bin/bash $u
read -p  'group name: 'g
groupadd $g
sleep 4s
usermod -g $g $u
usermod -u 8002 $u

