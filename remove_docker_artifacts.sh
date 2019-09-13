#!/usr/bin/env bash
#Delete the Container with the specified ID
docker rm $1
#Delete the Container Image
docker rmi $2

