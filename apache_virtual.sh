#! /bin/bash
#sudo apt update
#sudo apt install apache2 -y
#sudo apt install net-tools -y
read -p " enter your host directory name: " DIRECT
sudo mkdir -p /var/www/$DIRECT
read -p " entter virtual host file name plz file extession *.conf: " VIRTUAL
sudo touch /etc/apache2/sites-enabled/$VIRTUAL
read -p "enter port number: " PORT
sudo echo " <VirtualHost *:$PORT>
ServerAdmin webmaster@localhost
DocumentRoot /var/www/$DIRECT
ErrorLog ${APACHE_LOG_DIR}/ravierror.log
CustomLog ${APACHE_LOG_DIR}/raviaccess.log combined
</VirtualHost>" >> /etc/apache2/sites-enabled/$VIRTUAL
#sudo apt install git
sudo echo "The sites is working $PORT port" > /var/www/$DIRECT/index.html
#sudo git clone $
sudo echo "Listen $PORT" >> /etc/apache2/ports.conf
sudo ufw allow $PORT/tcp
sudo apachectl -t
sudo systemctl reload apache2
sudo systemctl restart apache2
sudo netstat -lntpu
