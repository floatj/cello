#!/bin/bash

mysql_password='cello@mysql#5566'

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
   home_dir='/home/floatj/docker_volume/mariadb'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='mac os'
   home_dir='/Users/johnny_liao/docker_volume/maraidb'
fi



docker run --restart=always -d --name cello_mariadb \
     	-p 3306:3306  \
	-e MYSQL_ROOT_PASSWORD=${mysql_password} \
	-e MYSQL_DATABASE=cello \
	-e MYSQL_USER=abctest \
	-e MYSQL_PASSWORD=test@5566 \
	-v ${home_dir}:/var/lib/mysql \
	mariadb:10.1
