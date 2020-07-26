# Dev: f97gp1@gmail.com
# Date: June 4th, 2020
#
# Follow the next links to configure the certificate issued from
# Certbot and reissude the certificate every day.
# 

https://certbot.eff.org/lets-encrypt/ubuntubionic-nginx
https://www.nginx.com/blog/using-free-ssltls-certificates-from-lets-encrypt-with-nginx/#:~:text=certbot can automatically configure NGINX,is www.example.com.

The error, about the "self usage" of the port 80 from nginx was fixed here
https://stackoverflow.com/questions/14972792/nginx-nginx-emerg-bind-to-80-failed-98-address-already-in-use

sudo nano /etc/nginx/sites-available/default
sudo nano /etc/crontab 

# append the next line to the crontab 
0 12 * * * root /usr/bin/certbot renew --quiet
