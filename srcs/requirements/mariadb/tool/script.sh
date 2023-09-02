#!/bin/bash
service mariadb start
mysql -u root -e "CREATE DATABASE wordpress;"
mysql -u root -e "CREATE USER IF NOT EXISTS 'atouati'@'localhost' IDENTIFIED BY 'Testing2' ;"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'atouati'@'localhost' ;"
mysql -u root -e "FLUSH PRIVILEGES;"