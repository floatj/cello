#!/bin/bash
cd cello_dockerfile
echo "building Dockerfile, please wait..."
docker build -t cello:php7.1-fpm .
echo "Done!"
