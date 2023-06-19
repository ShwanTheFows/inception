FROM debian:buster

RUN apt-get update
RUN apt-get install nginx -y && apt install openssl -y

COPY /conf/nginx.conf /etc/nginx/sites-available/default
COPY ./tools/nginxscript.sh /tmp

CMD ["/tmp/nginxscript.sh"]