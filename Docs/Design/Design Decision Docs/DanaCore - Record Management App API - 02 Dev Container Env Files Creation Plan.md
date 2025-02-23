I'll help you set up the dev container environment for the Record Management App API project. Let's break this down into steps:

### Step 1: Basic Dev Container Setup
1. Create the following files in the `.devcontainer` directory:
- `.devcontainer/devcontainer.json`: Development container configuration
- `.devcontainer/Dockerfile`: Main development container definition
- `.devcontainer/docker-compose.yml`: Orchestrates all required containers

### Step 2: Kubernetes Configuration
Create these files in the `k8s` directory:
- `k8s/deployments/record-mgmt-api.yaml`: API deployment configuration
- `k8s/deployments/customer-service.yaml`: Customer service deployment
- `k8s/deployments/employee-service.yaml`: Employee service deployment
- `k8s/deployments/inventory-service.yaml`: Inventory service deployment
- `k8s/deployments/audit-service.yaml`: Audit service deployment
- `k8s/deployments/search-service.yaml`: Search service deployment
- `k8s/deployments/aggregation-service.yaml`: Data aggregation service deployment

Services:
- `k8s/services/record-mgmt-api-svc.yaml`: API service configuration
- `k8s/services/customer-service-svc.yaml`: Customer service
- `k8s/services/employee-service-svc.yaml`: Employee service
- `k8s/services/inventory-service-svc.yaml`: Inventory service
- `k8s/services/audit-service-svc.yaml`: Audit service
- `k8s/services/search-service-svc.yaml`: Search service
- `k8s/services/aggregation-service-svc.yaml`: Data aggregation service

Storage:
- `k8s/storage/customer-db-pv.yaml`: Customer DB persistent volume
- `k8s/storage/employee-db-pv.yaml`: Employee DB persistent volume
- `k8s/storage/inventory-db-pv.yaml`: Inventory DB persistent volume
- `k8s/storage/audit-db-pv.yaml`: Audit DB persistent volume
- `k8s/storage/aggregated-db-pv.yaml`: Aggregated data DB persistent volume

Config and Secrets:
- `k8s/config/record-mgmt-config.yaml`: Application configuration
- `k8s/secrets/db-secrets.yaml`: Database credentials

### Step 3: CI/CD Configuration
- `.jenkins/Jenkinsfile`: Jenkins pipeline configuration
- `.github/workflows/ci.yml`: GitHub Actions CI workflow
- `build/docker/Dockerfile.prod`: Production Docker image

### Step 4: Service Ports Mapping
Here's the port mapping scheme starting from port 31000:
```
Record Management API: 31000
Customer Service: 31001
Employee Service: 31002
Inventory Service: 31003
Audit Service: 31004
Search Service: 31005
Aggregation Service: 31006
Customer DB: 31007
Employee DB: 31008
Inventory DB: 31009
Audit DB: 31010
Aggregated Data DB: 31011
Redis Cache: 31012
```

### Step 5: Development Scripts
- `scripts/setup-dev.sh`: Development environment setup
- `scripts/build-services.sh`: Build all services
- `scripts/deploy-local.sh`: Local deployment script
- `scripts/clean-env.sh`: Clean up development environment

### Step 6: Documentation
- `docs/setup.md`: Development setup instructions
- `docs/architecture.md`: Detailed architecture documentation
- `docs/api-spec.yaml`: OpenAPI specification
- `docs/deployment.md`: Deployment guide

Would you like me to provide the contents of any specific files from this structure?