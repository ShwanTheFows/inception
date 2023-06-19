#!bin/bash
openssl req -x509 -sha256 -nodes -days 364 -newkey rsa:2048 -keyout /etc/ssl/private/btahakey -out $CERTS_ -subj "/C=MA/L=KHOURIBGA/O=NADI/CN=btaha"
sed -i 's#mycert#'"$CERTS_"'#' /etc/nginx/sites-available/default
nginx -g "daemon off;"