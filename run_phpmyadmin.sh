#!/bin/bash
docker run --name pma -d --link cello_mariadb:db -p 8080:80 phpmyadmin/phpmyadmin || docker start pma
