FROM debian:bullseye

RUN apt-get update

RUN apt install -y nginx &&  apt install -y openssl

COPY conf/default.conf /etc/nginx/conf.d/

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/nginx.key -out /etc/nginx/nginx.crt -subj "/CN=atouati.42.fr"

CMD ["nginx", "-g", "daemon off;"]