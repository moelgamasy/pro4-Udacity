#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mohamedelgaamsy/project-img

# Step 2:  
# Authenticate and tag
echo "Docker ID and Image: $dockerpath"
docker login --username=mohamedelgaamsy
docker tag udacity $dockerpath
# Step 3:
# Push image to a docker repository
docker push $dockerpath
