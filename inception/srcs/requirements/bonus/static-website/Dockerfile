FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx 

COPY /conf/nginx.conf /etc/nginx/sites-available/default
COPY /tools/index.html /tmp/index.html

CMD nginx -g "daemon off;"
