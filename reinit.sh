#!/bin/bash
docker stop php nginx
docker rm php nginx
source init.sh
