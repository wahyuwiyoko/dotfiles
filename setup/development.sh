#!/bin/sh

# Create directory
mkdir -p "$HOME/downloads/development" "$HOME/software"

extract_tarballs() {
  wget -c --show-progress -O - "$1" | tar -xzf - -C  "$HOME/software"
}

# Neovim
extract_tarballs "https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz"

# Bun
mkdir -p "$HOME/.local/share/bun"
export BUN_INSTALL="$HOME/.local/share/bun"
curl -fsSL https://bun.sh/install | bash

# Go compiler
extract_tarballs "https://go.dev/dl/go1.21.6.linux-amd64.tar.gz"

# Hugo
extract_tarballs "https://github.com/gohugoio/hugo/releases/download/v0.121.2/hugo_0.121.2_linux-amd64.tar.gz"

# ngrok
extract_tarballs "https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz"

# hurl
extract_tarballs "https://github.com/Orange-OpenSource/hurl/releases/download/4.1.0/hurl-4.1.0-x86_64-unknown-linux-gnu.tar.gz"

# xdg-ninja
wget -P "$HOME/downloads/development" -c --show-progress \
  https://github.com/b3nj5m1n/xdg-ninja/archive/refs/heads/main.zip

unzip "$HOME/downloads/development/main.zip" -d "$HOME/software"

# Lua interpreter
sudo apt install -y lua5.4
