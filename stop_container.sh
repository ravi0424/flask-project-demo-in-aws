#!/bin/bash
set -e 

echo "Hi"

# Get the container ID of the first running container
containerid=$(sudo docker ps | awk '{print $1}' | head -n 1)

# Remove the container if it exists
if [ -n "$containerid" ]; then
    docker rm -f $containerid
else
    echo "No running containers found"
fi
