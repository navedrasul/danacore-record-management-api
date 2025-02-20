#!/bin/bash

echo "Setting up development environment for Record Management API..."

# Create necessary directories
mkdir -p ./data/customer-db
mkdir -p ./data/employee-db
mkdir -p ./data/inventory-db
mkdir -p ./data/audit-db
mkdir -p ./data/aggregated-db

# Install required tools
echo "Installing development tools..."
if ! command -v kubectl &> /dev/null; then
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    chmod +x kubectl
    sudo mv kubectl /usr/local/bin/
fi

# Setup minikube if not running
if ! command -v minikube &> /dev/null; then
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    sudo install minikube-linux-amd64 /usr/local/bin/minikube
    rm minikube-linux-amd64
    minikube start
fi

# Apply Kubernetes configurations
echo "Applying Kubernetes configurations..."
kubectl apply -f k8s/config/record-mgmt-config.yaml
kubectl apply -f k8s/secrets/db-secrets.yaml
kubectl apply -f k8s/storage/
kubectl apply -f k8s/deployments/
kubectl apply -f k8s/services/

echo "Development environment setup complete!"
