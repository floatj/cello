#!/bin/bash

source .env
echo "web_path   = $WEB_PATH"
echo "cello_path = $CELLO_PATH"

docker run \
--restart=always \
-d --name cello_phpfpm \
-v $WEB_PATH:/var/project \
-v $CELLO_PATH/www_default.conf:/usr/local/etc/php-fpm.d/www.conf \
-w /var/project \
cello:php7.1-fpm

