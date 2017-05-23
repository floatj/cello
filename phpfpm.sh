#!/bin/bash
# host      path: /home/johnny/web/blog
# container path: /var/porject

docker run \
--restart=always \
-d --name cello_phpfpm \
-v /home/www/docker_web/viola:/var/project \
-v /root/docker/cello/www_default.conf:/usr/local/etc/php-fpm.d/www.conf \
-w /var/project \
cello:php7.1-fpm

