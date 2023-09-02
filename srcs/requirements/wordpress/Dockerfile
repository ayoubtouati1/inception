FROM debian:bullseye

RUN apt-get update

RUN apt install -y php7.4 && apt install -y php7.4-fpm && apt install -y curl && apt install -y php7.4-mysql

RUN sed -i '36c\listen = 0.0.0.0:9000' /etc/php/7.4/fpm/pool.d/www.conf 
RUN mkdir -p /run/php
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
COPY ./tool/script.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/script.sh

WORKDIR /var/www/html/

CMD ["/usr/local/bin/script.sh"]