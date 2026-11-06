FROM node:24-bookworm-slim

# Install system prerequisites: git, curl, and libc6/libstdc++ (required for Hugo Extended)
RUN apt-get update && apt-get install -y \
    git \
    curl \
    ca-certificates \
    libc6 \
    libstdc++6 \
    golang \
    && rm -rf /var/lib/apt/lists/*

# Set the Hugo version you want to target
ENV HUGO_VERSION=0.166.0

# Download and install Hugo Extended
RUN curl -sSL https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz | tar -xz -C /usr/local/bin hugo

# Set the working directory inside the container
WORKDIR /src

# git is unhappy about the "dubious ownership" of /src
RUN git config --global --add safe.directory /src

# Expose Hugo's default development server port
EXPOSE 1313

# Start the Hugo development server by default
# --bind 0.0.0.0 is critical so you can access it from your host machine
# --poll allows live-reload to work reliably across Docker volume boundaries
CMD ["npm", "run", "serve:docker"]
