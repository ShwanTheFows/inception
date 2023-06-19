#!/bin/bash

service mysql start 

echo "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME ;" > db.sql
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_USER_PASSWORD' ;" >> db.sql
echo "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$MYSQL_USER'@'%' ;" >> db.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' ;" >> db.sql
echo "FLUSH PRIVILEGES;" >> db.sql

mysql < db.sql

kill $(cat /var/run/mysqld/mysqld.pid)

mysqld
