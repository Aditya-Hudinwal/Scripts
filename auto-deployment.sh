#!/bin/bash

 today_date=$(date +"%d-%m-%Y")
 mkdir -p /opt/backup/$today_date
 mkdir -p /opt/backup/$today_date/old
 mkdir -p /opt/backup/$today_date/new
 cp -rvf /var/www/html/.* /opt/backup/$today_date/old/
 cp -rvf /var/www/html/*  /opt/backup/$today_date/old/
 cp -rvf /tmp/index.html /opt/backup/$today_date/new/
 PID = $(pidof -s "apache2") #Find the process of apache2 and takes its PID and kill it.
 kill -9 $PID
 mv -vf /tmp/index.html /var/www/html/index.html
 systemctl start apache2
