#!/bin/bash
sleep 15
# apt install -y mariadb-server

# service mariadb start


wp core download --allow-root

cp wp-config-sample.php wp-config.php
sed -i "s/username_here/atouati/g" wp-config.php
sed -i "s/password_here/Testing2/g" wp-config.php
sed -i "s/localhost/mariadb/g" wp-config.php
sed -i "s/database_name_here/mariadb/g" wp-config.php

# wp config create --dbhost=mariadb --dbname=mariadb --dbuser=atouati --dbpass=Testing2 --allow-root

wp core install --url=localhost --title=touati_site --admin_user=atouati --admin_password=Testing2 --admin_email=atouati@gmail.com --allow-root

php-fpm7.4 --nodaemonize