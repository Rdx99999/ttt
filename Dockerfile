# Use an official base image
FROM ubuntu:20.04

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install curl and bash
RUN apt-get update && apt-get install -y \
    curl \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Run the curl command to install Coolify
RUN curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash

# Set default command (optional)
CMD ["bash"]
