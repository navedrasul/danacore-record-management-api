FROM mcr.microsoft.com/devcontainers/java:21

# Install additional tools
RUN apt-get update && apt-get install -y \
    curl \
    git \
    maven \
    docker.io \
    docker-compose \
    postgresql-client \
    redis-tools \
    && rm -rf /var/lib/apt/lists/*

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x kubectl \
    && mv kubectl /usr/local/bin/

# Install Helm
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

WORKDIR /workspace

# Switch to vscode user
USER vscode
