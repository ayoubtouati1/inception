#!/bin/bash
service mariadb start
mariadb -u root -e "CREATE DATABASE $DB_NAME;"
mariadb -u root -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD' ;"
mariadb -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' ;"
mysql -u root -e "FLUSH PRIVILEGES;"
service mariadb stop
mariadbd
