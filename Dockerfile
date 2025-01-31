FROM ubuntu:20.04

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    curl \
    ca-certificates \
    gnupg2 \
    lsb-release \
    && apt-get clean


# Expose necessary ports (if needed)
EXPOSE 3000

# Command to run Coolify (adjust depending on Coolify's setup)
CMD ["curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash"]
