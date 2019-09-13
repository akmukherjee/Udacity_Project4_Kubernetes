#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
IMAGE_NAME="akmukherjee/udacity-docker-predictor"
REPO_TAG_NAME="akmukherjee/udacity-docker-predictor"
# Step 1:
# Create dockerpath
dockerpath=akmukherjee/udacity-docker-predictor

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker login
docker tag $IMAGE_NAME $REPO_TAG_NAME
docker push $REPO_TAG_NAME
