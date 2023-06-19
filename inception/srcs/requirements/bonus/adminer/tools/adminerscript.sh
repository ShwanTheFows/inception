#!bin/bash

wget "http://www.adminer.org/latest.php" -O /var/www/html/index.php

php -S 0.0.0.0:440 -t /var/www/html