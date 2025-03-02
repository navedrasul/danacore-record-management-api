# DanaCore - Record Management App API - 06 Dev Container Env Files Creation Plan

This document outlines the updated development container environment setup for the Record Management App API. It reflects the latest design decisions:
- The application is now a modular monolith (a single Spring Boot service containing all domain modules).
- A single database container will be used to store data for all modules (Customer, Inventory, etc.).
- The UI project is hosted separately and communicates with the API over the cloud.
- All configuration details are externalized to ease future migration (e.g., moving the DB to a cloud provider).

---

## Step 1: Basic Dev Container Setup

Create the following files in the `.devcontainer` directory:
- **.devcontainer/devcontainer.json**: Development container configuration.
- **.devcontainer/Dockerfile**: Main development container definition.
- **.devcontainer/docker-compose.yml**: Orchestrates all required containers (API, DB, and Redis).

---

## Step 2: Docker Compose Configuration

Use a consolidated database container instead of separate containers per module. The updated `docker-compose.yml` should now include:
- **api**: The modular monolith service.
- **db**: A single PostgreSQL container for all domain data.
- **redis**: Redis cache container.

Below is an example configuration:

```dockercompose
// filepath: /workspace/.devcontainer/docker-compose.yml
services:
  api:
    build:
      context: .
      dockerfile: Dockerfile
    volumes:
      - ../:/workspace:cached
    command: sleep infinity
    networks:
      - main-network
    depends_on:
      - db
      - redis

  db:
    image: postgres:16
    restart: unless-stopped
    ports:
      - "31007:5432"
    environment:
      POSTGRES_USER: app_user
      POSTGRES_PASSWORD: app_pass
      POSTGRES_DB: app_db
    networks:
      - main-network

  redis:
    image: redis:latest
    ports:
      - "31012:6379"
    networks:
      - main-network

networks:
  main-network:
    driver: bridge
```

*Note:*  
- The API uses the service name `db` as its hostname.  
- Port assignments can be updated based on your requirements.

---

## Step 3: Dev Container Configuration (devcontainer.json)

Ensure that your dev container configuration forwards the necessary ports and sets up the environment for the modular monolith:

```jsonc
// filepath: /workspace/.devcontainer/devcontainer.json
{
    "name": "Record Management API Dev Container",
    "dockerComposeFile": "docker-compose.yml",
    "service": "api",
    "workspaceFolder": "/workspace",
    "customizations": {
        "vscode": {
            "extensions": [
                "vscjava.vscode-java-pack",
                "pivotal.vscode-spring-boot",
                "redhat.vscode-yaml",
                "ms-azuretools.vscode-docker",
                "ms-kubernetes-tools.vscode-kubernetes-tools",
                "eamodio.gitlens"
            ]
        }
    },
    "remoteUser": "vscode",
    "postCreateCommand": "mkdir -p scripts && sudo chmod +x scripts/*.sh && ./scripts/setup-dev.sh",
    "forwardPorts": [31000, 31007, 31012]
}
```

---

## Step 4: Application Configuration

For the modular monolith, centralize all configuration in a single `application.yaml` (or `application.properties`) file within your Spring Boot project. Use environment variables to externalize settings for the database. For example:

```yaml
// filepath: /workspace/Source/RecordManagementApp/src/main/resources/application.yaml
server:
  port: 31000

spring:
  datasource:
    url: jdbc:postgresql://db:5432/app_db
    username: app_user
    password: app_pass
  jpa:
    hibernate:
      ddl-auto: update
```

*Note:*  
- The hostname `db` corresponds to the database container defined in Docker Compose.

---

## Step 5: Kubernetes, CI/CD, and Other Configurations

### Kubernetes Configuration
When ready to deploy or test in Kubernetes, create deployment and service YAML configurations for:
- **API service** (record-mgmt-api)
- **Database persistence** (if needed, use Persistent Volume Claims)

### CI/CD Configuration
Prepare pipelines and workflows:
- **.jenkins/Jenkinsfile**: For Jenkins.
- **.github/workflows/ci.yml**: For GitHub Actions.
- **build/docker/Dockerfile.prod**: Production Docker image.

### Development Scripts
Include scripts for:
- Environment setup (`scripts/setup-dev.sh`)
- Service build (`scripts/build-services.sh`)
- Local deployment (`scripts/deploy-local.sh`)
- Environment cleanup (`scripts/clean-env.sh`)

---

## Future Considerations

With this design:
- **Single DB Instance:** All domain tables (customers, inventory, etc.) reside in one unified database.
- **Cloud Migration:** When needed, you can move the database to a cloud provider by updating the environment variables or application configuration. The API service will then communicate with the external DB over the cloud without requiring code changes.
- **Separation of UI:** The UI remains an independent project, communicating with the API over secure cloud channels.

---

This plan provides a clear outline for setting up your development environment while ensuring that the API is modular, maintainable, and prepared for future scalability and deployment options.

This file serves as a definitive guide for setting up and evolving your dev container environment based on our latest design decisions.
