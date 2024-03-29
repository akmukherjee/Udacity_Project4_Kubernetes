#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="akmukherjee/udacity-docker-predictor"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-docker-predictor --image=$dockerpath --port=80

#Waiting for Pods to be ready
sleep 20
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/udacity-docker-predictor 8000:80

