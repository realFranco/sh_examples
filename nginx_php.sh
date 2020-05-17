# Date May 17th, 2020
# Franco Gil
# A tiny tutorial of using Nginx and PHP for serve static content

# nginx to use php
> https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-20-04
# if problems
> https://stackoverflow.com/questions/25591040/nginx-serves-php-files-as-downloads-instead-of-executing-them

sudo mkdir /var/www/html/franco_dev
sudo chown -R $USER:$USER /var/www/html/franco_dev

sudo ln -s /etc/nginx/sites-available/file /etc/nginx/sites-enabled/
sudo nginx -t

nano /var/www/html/franco_dev/index.html    # put  html syntax
nano /var/www/html/franco_devinfo.php       # put php info

sudo service nginx start | status | etc
sudo service php7.4-fpm restart # for php

http://localhost/franco_dev/ # to watch the content index.html by default
http://localhost/franco_dev/info.php
