#!/bin/bash
set -e 
echo "Hi"
containerid=$(docker ps | awk '{print $1}' | head -n 1)
docker rm -f $containerid
