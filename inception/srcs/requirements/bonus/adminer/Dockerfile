FROM debian:buster

RUN apt-get update
RUN apt-get install php php-mysql -y
RUN apt-get install wget -y

COPY ./tools/adminerscript.sh /tmp

CMD ["/tmp/adminerscript.sh"]