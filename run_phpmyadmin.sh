#!/bin/bash
docker run --name pma -d --link mariadb:db -p 8080:80 phpmyadmin/phpmyadmin
