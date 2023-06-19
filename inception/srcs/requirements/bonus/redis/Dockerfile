FROM debian:buster


RUN apt-get -y update
RUN apt-get install redis-server -y

COPY ./tools/redisscript.sh /tmp

CMD ["/tmp/redisscript.sh"]