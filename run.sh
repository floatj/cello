#!/bin/bash
docker run --restart=always -d --name cello_phpfpm -v /tmp/laravel_project:/var/project -w /var/project cello:php7.1-fpm

