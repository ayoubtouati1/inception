FROM debian:bullseye

RUN apt-get update

RUN apt install -y nginx &&  apt install -y openssl && apt install -y php7.4 && apt install -y php7.4-fpm

RUN sed -i '36c\listen = 0.0.0.0:9000' /etc/php/7.4/fpm/pool.d/www.conf && mkdir /run/php && php-fpm7.4

COPY conf/default.conf /etc/nginx/conf.d/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/nginx.key -out /etc/nginx/nginx.crt -subj "/CN=localhost"

CMD ["nginx", "-g", "daemon off;"]