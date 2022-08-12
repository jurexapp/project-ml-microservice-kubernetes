#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="bethanecol/mlop:latest"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy python-helloworld --image=$dockerpath

# --generator=run-pod/v1

# Step 3:
# List kubernetes pods
kubectl get  pods
# Step 4:
# Forward the container port to a host
# kubectl port-forward pod/mlop-proj.v1 8000:80
# kubectl expose pod mlop-v1 --port=8080 --target-port=8080 --name mlop-service
kubectl port-forward pod/python-helloworld-6ccd8846d8-pxp9c --address 0.0.0.0 80:80


