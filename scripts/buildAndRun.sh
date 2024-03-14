#!/bin/bash

APP=node02-proxy
IMAGE=$APP:local
NET=jarand-net

docker build -t $IMAGE .

docker rm -f -v $APP

docker network create $NET || true

docker run -dt --name $APP -p 90:90 -p 91:91 --network $NET \
  $IMAGE
