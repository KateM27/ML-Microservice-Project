#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub 

# Create dockerpath
dockerpath="katemamo/ml-microsvc-k8"
 
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u katemamo
docker tag ml-microsvc-k8 $dockerpath

# Push image to a docker repository
docker push $dockerpath
