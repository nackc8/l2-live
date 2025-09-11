FROM ubuntu:25.04

RUN apt update
RUN apt-get install -y mariadb-server
# Eventuellt optimera bort onödigt som installerades ovan
RUN /usr/bin/install -m 755 -o mysql -g root -d /var/run/mysqld

COPY setup.sql .
RUN mariadb < setup.sql

USER mysql

CMD ["/usr/sbin/mysqld"]
