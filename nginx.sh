#!/bin/bash
docker run \
-d --name cello_nginx \
-p 8099:80 \
--link cello_phpfpm:phpfpm \
-v /home/www/docker_web/viola:/var/project \
-v /root/docker/cello/nginx_default.conf:/etc/nginx/conf.d/default.conf \
nginx:1.13
