FROM debian:bullseye

RUN apt-get -y update

RUN  apt-get install -y mariadb-server && apt install -y  mariadb-client

COPY ./tool/script.sh /

RUN chmod +x /script.sh

RUN sed -i '30c\bind-address            = 0.0.0.0' /etc/mysql/mariadb.conf.d/50-server.cnf


EXPOSE 3306

CMD ["./script.sh"]