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

echo "Development environment setup complete!"
