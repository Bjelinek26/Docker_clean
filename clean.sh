#!/bin/bash

read -p "Enter path to docker project" DPATH
cd $DPATH
docker-compose down
docker container ls -aq | xargs docker rm -f
docker images -a | xargs docker rmi -f
