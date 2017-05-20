#!/bin/bash
echo "stop and remove docker containers"
docker stop cello_nginx
docker stop cello_phpfpm
docker rm cello_nginx
docker rm cello_phpfpm
echo "done!"
