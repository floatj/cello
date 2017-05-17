#!/bin/bash

# php7.1-fpm
# network = hostmode !


docker run \
--restart=always \
--net=host \
-d --name cello_phpfpm \
#--link cello_mysql:db \
#-e DB_HOST=cello_mysql \
-v /tmp/laravel_project:/var/project \
-w /var/project \
cello:php7.1-fpm

