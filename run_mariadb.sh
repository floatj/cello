#!/bin/bash
docker run --restart=always -d --name cello_mariadb \
     	-p 3306:3306  \
	-e MYSQL_ROOT_PASSWORD=123456 \
	-e MYSQL_DATABASE=homestead \
	-e MYSQL_USER=abctest \
	-e MYSQL_PASSWORD=test5566 \
	-v /Users/johnny_liao/docker_volume/maraidb:/var/lib/mysql \
	mariadb:10.1
