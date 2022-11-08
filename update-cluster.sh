#!/usr/bin/env bash

DEPLOYMENT_NAME=hello-nodejs
IMAGE=braxnu/hello-node
REGION=us-east-1

kubectl set image deployment.apps/$DEPLOYMENT_NAME hello-node=braxnu/hello-node --server $K8_SERVER
kubectl rollout restart deployment.apps/$DEPLOYMENT_NAME --server $K8_SERVER
