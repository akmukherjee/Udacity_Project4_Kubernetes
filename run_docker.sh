#!/usr/bin/env bash
## Complete the following steps to get Docker running locally
IMAGE_NAME="akmukherjee/udacity-docker-predictor"
CONTAINER_NAME="udacity-docker-predictor"
# Step 1:
# Build image and add a descriptive tag
docker build . -t $IMAGE_NAME 
# Step 2: 
# List docker images
docker images ls
# Step 3: 
# Run flask app
docker run  -p 127.0.0.1:8080:80 --name $CONTAINER_NAME $IMAGE_NAME
