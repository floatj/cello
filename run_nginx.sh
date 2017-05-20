#!/bin/bash
docker run \
-d --name cello_nginx \
-p 8099:80 \
#--link cello_phpfpm:phpfpm \
-v /home/johnny/web/blog:/var/project \
-v /home/johnny/project/cello/nginx_default.conf:/etc/nginx/conf.d/default.conf \
nginx:1.11.10
