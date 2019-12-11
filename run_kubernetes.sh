#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=docker.io/noduplicatesforme/machlearning

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment my-kubectl-app --image=$dockerpath:0.0.1

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment my-kubectl-app --type="NodePort" --port=8000 --target-port=80


# minikube service my-kubectl-app

# kubectl logs <pod-name>
