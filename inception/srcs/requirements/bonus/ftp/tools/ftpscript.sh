#!/bin/bash

service vsftpd start

adduser $FTP_USER --disabled-password
echo "$FTP_USER:$FTP_PASSWORD" | chpasswd

mkdir /home/$FTP_USER/ftp
chown nobody:nogroup /home/$FTP_USER/ftp
chmod a-w /home/$FTP_USER/ftp

mkdir /home/$FTP_USER/ftp/upload
chown $FTP_USER:$FTP_USER /home/$FTP_USER/ftp/upload

echo $FTP_USER >> /etc/vsftpd.userlist

service vsftpd stop

/usr/sbin/vsftpd
