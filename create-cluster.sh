#!/usr/bin/env bash

CLUSTER_NAME=hello-nodejs
REGION=us-east-1

aws cloudformation delete-stack --stack-name eksctl-$CLUSTER_NAME-cluster
eksctl create cluster --name $CLUSTER_NAME --region $REGION --zones "$REGION"a,"$REGION"b,"$REGION"c
kubectl create deploy $CLUSTER_NAME --image braxnu/hello-node
kubectl expose deployment $CLUSTER_NAME --type=LoadBalancer --name=$CLUSTER_NAME-service --port 80 --target-port 3000
