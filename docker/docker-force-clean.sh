#!/bin/sh

# Kill running containers:
docker kill $(docker ps -qa)
# Delete
docker rm -v $(docker ps -qa)
# Remove all images
docker rmi -f $(docker images -q)
