#!/bin/bash
source .env
echo "web_path   = $WEB_PATH"
echo "cello_path = $CELLO_PATH"

docker run \
-d --name cello_nginx \
-p 8099:80 \
--link cello_phpfpm:phpfpm \
-v $WEB_PATH:/var/project \
-v $CELLO_PATH/nginx_default.conf:/etc/nginx/conf.d/default.conf \
-v /var/laravel_storage/viola:/var/laravel_storage/viola \
nginx:1.13
