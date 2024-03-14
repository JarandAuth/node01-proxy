#!/bin/bash

APP=node01-proxy
IMAGE=ghcr.io/jarandauth/node01-proxy:main
NET=jarand-net

docker rm -f -v $APP

docker network create $NET || true

docker run -dt --name $APP -p 90:90 -p 91:91 --network $NET --pull=always --restart unless-stopped \
  $IMAGE
