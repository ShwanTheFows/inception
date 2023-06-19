FROM debian:buster

RUN apt-get update
RUN apt-get install wget -y

COPY ./tools/cadvisorscript.sh /tmp

CMD ["/tmp/cadvisorscript.sh"]