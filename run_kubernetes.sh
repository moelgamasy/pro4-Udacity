#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=mohamedelgaamsy/project-img

# Step 2

kubectl run udacity --image=$dockerpath  

# Step 3:
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/udacity  8000:80
