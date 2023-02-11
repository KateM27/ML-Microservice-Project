#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath="katemamo/ml-microsvc-k8"

# Run the Docker Hub container with kubernetes
kubectl run ml-microsvc-k8 --image=$dockerpath --port=80

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward ml-microsvc-k8 8000:80
