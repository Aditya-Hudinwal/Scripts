#! /bin/bash
sudo apt update
#read -p " Have you install nginx web-server yes enter 1 and No enter 2: " NGINX
#if [ $NGINX ==== 1 ]; then
	#sudo apt update
	#sleep 30s
	#sudo apt install nginx
	#sleep 30s
	#sudo systemctl start nginx
	#sudo systemctl restart nginx
	#sudo systemctl enable nginx
	#sudo systemctl status nginx
	sudo mkdir -p /var/www/ravik
	sudo echo " hllow ravi kumar" > /var/www/ravik/index.html
	sudo echo " server {
	listen 102;
	listen [::]:102;

	# SSL configuration
	#
	# listen 443 ssl default_server;
	# listen [::]:443 ssl default_server;
	#
	# Note: You should disable gzip for SSL traffic.
	# See: https://bugs.debian.org/773332
	#
	# Read up on ssl_ciphers to ensure a secure configuration.
	# See: https://bugs.debian.org/765782
	#
	# Self signed certs generated by the ssl-cert package
	# Don't use them in a production server!
	#
	# include snippets/snakeoil.conf;

	root /var/www/ravik;

	# Add index.php to the list if you are using PHP
	index index.html index.htm;

	server_name ravisite;

	location / {
		# First attempt to serve request as file, then
		# as directory, then fall back to displaying a 404.
		try_files $uri $uri/ =404;
	}
}" >/etc/nginx/conf.d/ravik.conf	
	sudo systemctl reload nginx
	sudo systemctl restart nginx
	sudo nginx -t
	sudo apt install net-tool
        sudo sleep 20s
	sudo ufw allow 102/tcp	
	sudo netstat -lntup
