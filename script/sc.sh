#!/bin/bash

# Set the image name
IMAGE_NAME="agsr-nginx"

# Set the image tag from the script argument or use "latest" as default
IMAGE_TAG="${1:-latest}"

# Build the Docker image
docker build -t "$IMAGE_NAME:$IMAGE_TAG" ../nginx/

# Push the Docker image to Docker Hub
# docker push "$IMAGE_NAME:$IMAGE_TAG"

# Deploy the Helm chart
helm upgrade --install agsr-nginx ../charts/agsr-nginx
