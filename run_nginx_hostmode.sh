#!/bin/bash

# start nginx

# host 	    port: 8088
# container port: 80
# network = host mode!

docker run \
--restart=always \
--net=host \
-d --name cello_nginx \
-p 8088:80 \
-v /tmp/laravel_project:/var/project \
-v /tmp/nginx_default.conf:/etc/nginx/conf.d/default.conf \
nginx:1.11.10


