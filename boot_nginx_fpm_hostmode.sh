#!/bin/bash

# only boot nginx + php-fpm, --net=host
echo "start nginx container\n"
./run_nginx_hostmode.sh

echo "start phpfpm container\n"
./run_phpfpm_hostmode.sh

printf "\033[1;32mDone!\033[m"
