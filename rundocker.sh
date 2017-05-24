#/bin/bash

function stop_d(){
  echo "stop and remove docker containers..."
  docker stop cello_nginx
  docker stop cello_phpfpm
  docker rm cello_nginx
  docker rm cello_phpfpm
  echo "done!"
}

function start_d(){
  echo "starting containers..."
  ./phpfpm.sh
  ./nginx.sh
  echo "done!"
}

case "$1" in
  "stop")
    stop_d
    ;;
  "start")
    start_d
    ;;
  "restart")
    stop_d
    start_d
    ;;
  *)
    echo "usage: ./rundocker.sh start | stop | restart"
    exit 1
    ;;
esac
