#!/bin/bash

wp core download --allow-root

wp core install --url=example.com --title=Example --admin_user=supervisor --admin_password=strongpassword --admin_email=info@example.com

php-fpm7.4 --nodaemonize