#!/bin/bash

echo "Cleaning up development environment..."

# Delete Kubernetes resources
echo "Removing Kubernetes resources..."
kubectl delete -f k8s/deployments/
kubectl delete -f k8s/services/
kubectl delete -f k8s/storage/
kubectl delete -f k8s/config/record-mgmt-config.yaml
kubectl delete -f k8s/secrets/db-secrets.yaml

# Clean up data directories
echo "Cleaning up data directories..."
rm -rf ./data/customer-db
rm -rf ./data/employee-db
rm -rf ./data/inventory-db
rm -rf ./data/audit-db
rm -rf ./data/aggregated-db

# Clean Docker images
echo "Cleaning Docker images..."
docker rmi $(docker images 'danacore/*' -q) -f

# Optional: Stop minikube
read -p "Do you want to stop minikube? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    minikube stop
fi

echo "Cleanup complete!"
