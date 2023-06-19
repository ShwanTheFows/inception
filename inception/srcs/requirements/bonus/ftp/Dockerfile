FROM debian:buster

RUN apt-get update
RUN apt-get install vsftpd -y

COPY ./tools/ftpscript.sh /tmp
COPY ./conf/vsftpd.conf /etc/vsftpd.conf

CMD ["/tmp/ftpscript.sh"]