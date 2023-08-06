#!/bin/sh

# Docker engine: https://docs.docker.com/engine/install/debian/

# Uninstall unofficial packages to avoid conflicts
sudo apt purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin \
  docker-compose-plugin docker-ce-rootless-extras docker.io docker-doc \
  docker-compose podman-docker containerd runc

# Create directory
mkdir -p "$HOME/downloads/docker"

download_package() {
  wget -P "$HOME/downloads/docker" -c --show-progress "$1"
}

# Download official packages
download_package "https://download.docker.com/linux/debian/dists/bookworm/pool/stable/amd64/containerd.io_1.6.22-1_amd64.deb"
download_package "https://download.docker.com/linux/debian/dists/bookworm/pool/stable/amd64/docker-ce_24.0.5-1~debian.12~bookworm_amd64.deb"
download_package "https://download.docker.com/linux/debian/dists/bookworm/pool/stable/amd64/docker-ce-cli_24.0.5-1~debian.12~bookworm_amd64.deb"
download_package "https://download.docker.com/linux/debian/dists/bookworm/pool/stable/amd64/docker-buildx-plugin_0.11.2-1~debian.12~bookworm_amd64.deb"
download_package "https://download.docker.com/linux/debian/dists/bookworm/pool/stable/amd64/docker-compose-plugin_2.20.2-1~debian.12~bookworm_amd64.deb"

# Go to docker directory
cd "$HOME/downloads/docker" || exit

# Install packages
sudo apt install ./containerd.io_1.6.22-1_amd64.deb \
  ./docker-ce_24.0.5-1~debian.12~bookworm_amd64.deb \
  ./docker-ce-cli_24.0.5-1~debian.12~bookworm_amd64.deb \
  ./docker-buildx-plugin_0.11.2-1~debian.12~bookworm_amd64.deb \
  ./docker-compose-plugin_2.20.2-1~debian.12~bookworm_amd64.deb

cd "$OLDPWD" || exit

# Start daemon
sudo service docker start
