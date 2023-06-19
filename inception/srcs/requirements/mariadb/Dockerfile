FROM debian:buster

RUN apt-get update
RUN apt-get install mariadb-server -y

COPY ./tools/mysqlscript.sh /tmp
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

CMD ["/tmp/mysqlscript.sh"]