FROM debian:buster

RUN apt-get update
RUN apt-get install php-fpm php-mysql -y && apt-get install curl -y

COPY ./tools/wpscript.sh /tmp
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

CMD ["/tmp/wpscript.sh"]