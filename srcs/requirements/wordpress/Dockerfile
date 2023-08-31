FROM debian:bullseye

RUN apt-get update

RUN apt install -y php7.4 && apt install -y php7.4-fpm

RUN sed -i '36c\listen = 0.0.0.0:9000' /etc/php/7.4/fpm/pool.d/www.conf 
RUN mkdir -p /run/php 

CMD [ "php-fpm7.4", "--nodaemonize"]