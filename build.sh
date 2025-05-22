#!/bin/bash

FRONT_IMAGE=narenkarthik/joblane-frontend
BACK_IMAGE=narenkarthik/joblane-backend
TAG=latest

echo "Building frontend..."
docker build -t $FRONT_IMAGE:$TAG ./client

echo "Building backend..."
docker build -t $BACK_IMAGE:$TAG ./server

echo "Pushing images (optional if local)..."
# docker push $FRONT_IMAGE:$TAG
# docker push $BACK_IMAGE:$TAG

echo "Deploying to Kubernetes..."
kubectl apply -f k8s/

echo "Done!"
