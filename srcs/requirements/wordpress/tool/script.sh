#!/bin/bash
sleep 1
# apt install -y mariadb-server

# service mariadb start


wp core download --allow-root

cp wp-config-sample.php wp-config.php
sed -i "s/username_here/$DB_USER/g" wp-config.php
sed -i "s/password_here/$DB_PASSWORD/g" wp-config.php
sed -i "s/localhost/$DB_HOSTNAME/g" wp-config.php
sed -i "s/database_name_here/$DB_NAME/g" wp-config.php

# wp config create --dbhost=mariadb --dbname=mariadb --dbuser=atouati --dbpass=Testing2 --allow-root

wp core install --url=$DB_HOSTNAME --title=touati_site --admin_user=atouati --admin_password=$DB_PASSWORD --admin_email=atouati@gmail.com --allow-root

php-fpm7.4 --nodaemonize