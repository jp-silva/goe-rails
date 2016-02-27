#!/bin/sh

docker-machine stop default
docker-machine start default
eval $(docker-machine env default)
