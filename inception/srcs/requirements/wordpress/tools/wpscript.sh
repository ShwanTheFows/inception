#!bin/bash

mkdir -p /var/www/html
cd /var/www/html

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root

mv wp-config-sample.php wp-config.php

sed -i 's/database_name_here/'$DATABASE_NAME'/' /var/www/html/wp-config.php
sed -i 's/username_here/'$MYSQL_USER'/' /var/www/html/wp-config.php
sed -i 's/password_here/'$MYSQL_USER_PASSWORD'/' /var/www/html/wp-config.php
sed -i 's/localhost/mariadb/' /var/www/html/wp-config.php

wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root

wp user create $WP_USER $WP_USER_MAIL --role=author --user_pass=$WP_USER_PASSWORD --allow-root

wp plugin install redis-cache --allow-root
wp plugin activate redis-cache --allow-root
wp config set WP_REDIS_HOST 'redis' --allow-root
wp config set WP_REDIS_PORT '6379' --allow-root
wp config set WP_CACHE 'true' --allow-root
wp redis enable --allow-root

mkdir /run/php

chown -R www-data:www-data /var/www/html/

/usr/sbin/php-fpm7.3 -F
