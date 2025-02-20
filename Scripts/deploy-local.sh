#!/bin/bash

echo "Deploying services to local Kubernetes cluster..."

# Ensure minikube is running
if ! minikube status | grep -q "Running"; then
    echo "Starting minikube..."
    minikube start
fi

# Set docker env to minikube's docker daemon
eval $(minikube docker-env)

# Apply Kubernetes configurations
echo "Applying Kubernetes configurations..."

# Apply in order: configs, secrets, storage, services, deployments
kubectl apply -f k8s/config/record-mgmt-config.yaml
kubectl apply -f k8s/secrets/db-secrets.yaml

echo "Applying storage configurations..."
kubectl apply -f k8s/storage/

echo "Applying service configurations..."
kubectl apply -f k8s/services/

echo "Applying deployment configurations..."
kubectl apply -f k8s/deployments/

# Wait for pods to be ready
echo "Waiting for pods to be ready..."
kubectl wait --for=condition=ready pod --all --timeout=300s

# Display service URLs
echo "Services deployed successfully! Access URLs:"
minikube service record-mgmt-api-svc --url

echo "Deployment complete!"
