#! /bin/bash
#install nginx web server
apt update -y
apt install nginx -y
# Add file in /etc/nginx/conf.d
echo "
      server {
           listen 115;
	   server_name ravi.com;
	   root /usr/share/nginx/html/ravi;
	   access_log /var/log/nginx/raviaccess.log;
	   error_log /var/log/nginx/ravierror.log;
   }" > /etc/nginx/conf.d/ravi.conf
   # create a directory in /var/share/nginx/html
   mkdir -p /usr/share/nginx/html/ravi/      
   # enter file index.html in /usr/share/nginx/html/ravi
   echo "hello nitin" > /usr/share/nginx/html/ravi/index.html
   # reload and restart nginx webserver
  systemctl reload nginx
  systemctl restart nginx
  # change root directory path in /etc/nginx/sites-avaiable/default file
  # change to /var/www/html to /usr/share/nginx/html/ravi/      


         
