#!/bin/bash
path=$(cd "$(dirname "$0")"; pwd)

docker build -t jessie .

docker run -it --rm --volume=${path}/conf:/tmp/etc jessie cp -r /etc/php5 /tmp/etc/php5

docker run -it --rm --volume=${path}/conf:/tmp/etc jessie cp -r /etc/nginx /tmp/etc/nginx
