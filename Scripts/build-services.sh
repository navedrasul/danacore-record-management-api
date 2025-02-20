#!/bin/bash

echo "Building all services for Record Management API..."

# Build main API
echo "Building Record Management API..."
mvn clean package -DskipTests

# Build and tag Docker images
echo "Building Docker images..."

services=(
    "record-mgmt-api"
    "customer-service"
    "employee-service"
    "inventory-service"
    "audit-service"
    "search-service"
    "aggregation-service"
)

for service in "${services[@]}"; do
    echo "Building $service..."
    docker build -t "danacore/$service:latest" \
        --build-arg SERVICE_NAME="$service" \
        --build-arg SERVICE_PORT="${port}" \
        -f build/docker/Dockerfile.prod .
done

echo "All services built successfully!"
