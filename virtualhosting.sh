#!/bin/bash
sudo apt update
sudo apt install apache2 -y
sudo apt install net-tools 
sudo mkdir /var/www/amit
sudo mkdir /var/www/amityadav
sudo touch /etc/apache2/sites-enabled/amit.conf
sudo touch /etc/apache2/sites-enabled/amityadav.conf
sudo echo "<VirtualHost *:91>
 ServerAdmin webmaster@localhost
        DocumentRoot /var/www/amit
 ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
 </VirtualHost> " > /etc/apache2/sites-enabled/amit.conf

sudo echo "<VirtualHost *:92>
 ServerAdmin webmaster@localhost
        DocumentRoot /var/www/amityadav
 ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
 </VirtualHost>" > /etc/apache2/sites-enabled/amityadav.conf
sudo git clone https://github.com/PawanKolhe/PUBG-Tournament.git /var/www/amit
sudo git clone https://github.com/Firstbloodio/PUBG-page.git /var/www/amityadav
sudo echo "Listen 91" >> /etc/apache2/ports.conf
sudo echo "Listen 92" >> /etc/apache2/ports.conf
sudo ufw allow 91/tcp
sudo ufw allow 92/tcp
sudo systemctl reload apache2
sudo systemctl restart apache2
sudo apacheclt -t 
sudo netstat -lntpu
