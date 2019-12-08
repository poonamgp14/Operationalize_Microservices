#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=noduplicatesforme/machlearning


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ./password.txt | docker login --username noduplicatesforme --password-stdin docker.io
docker tag machlearning $dockerpath:0.0.1

# Step 3:
# Push image to a docker repository
docker push $dockerpath:0.0.1
