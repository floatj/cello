#!/bin/bash
# host      path: /home/johnny/web/blog
# container path: /var/porject

docker run \
--restart=always \
-d --name cello_phpfpm \
-v /home/johnny/web/blog:/var/project \
-w /var/project \
cello:php7.1-fpm

