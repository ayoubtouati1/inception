#!/bin/bash
service mariadb start
mariadb -u root -e "CREATE DATABASE mariadb;"
mariadb -u root -e "CREATE USER IF NOT EXISTS 'atouati'@'%' IDENTIFIED BY 'Testing2' ;"
mariadb -u root -e "GRANT ALL PRIVILEGES ON mariadb.* TO 'atouati'@'%' ;"
# mysql -u root -e "FLUSH PRIVILEGES;"
