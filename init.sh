#!/bin/bash

path=$(cd "$(dirname "$0")"; pwd)

docker run -d \
--name="php" \
--volume=${path}/conf/php5:/etc/php5:ro \
--volume=/var/www:/var/www \
jessie php5-fpm -F -O

docker run -d \
--name="nginx" \
--volume=${path}/conf/nginx:/etc/nginx:ro \
--volume=/var/www:/var/www \
--volume=/var/log/nginx:/var/log/nginx \
--link=php:php \
-p=80:80 \
jessie nginx -g "daemon off;"
