#!/bin/bash

# Replace these variables with your actual values
GITHUB_USERNAME="duartediasctw"
GITHUB_TOKEN="GITHUB TOKEN"
REPOSITORY_NAME="cn-intro"
IMAGE_NAME="duartediasctw/pacman"
IMAGE_VERSION="2.0"

# Authenticate with GitHub Container Registry
echo $GITHUB_TOKEN | docker login ghcr.io -u $GITHUB_USERNAME --password-stdin

# Tag your Docker image
docker tag $IMAGE_NAME:$IMAGE_VERSION ghcr.io/$GITHUB_USERNAME/$REPOSITORY_NAME/$IMAGE_NAME:$IMAGE_VERSION

# Push the Docker image to GitHub Container Registry
docker push ghcr.io/$GITHUB_USERNAME/$REPOSITORY_NAME/$IMAGE_NAME:$IMAGE_VERSION

# Optionally, remove the local Docker image if needed
# docker rmi $IMAGE_NAME:$IMAGE_VERSION
