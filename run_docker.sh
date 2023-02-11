#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build --tag=ml-microsvc-k8 .

# List docker images
docker image ls
 
# Run flask app
docker run -p 8000:80 ml-microsvc-k8