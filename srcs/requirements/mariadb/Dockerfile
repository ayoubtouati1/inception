FROM debian:bullseye

RUN apt-get -y update

RUN  apt-get install -y mariadb-server mariadb-client

COPY ./tool/script.sh /

RUN chmod +x /script.sh

RUN ./script.sh

CMD ["mariadbd"]