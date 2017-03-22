#!/bin/bash
docker run \
--restart=always \
-d --name cello_nginx \
-p 80:80 \
--link cello_phpfpm:phpfpm \
-v /tmp/laravel_project:/var/project \
-v /tmp/nginx_default.conf:/etc/nginx/conf.d/default.conf \
nginx:1.11.10


