#!/bin/sh

# Create directory
mkdir -p "$HOME/downloads/development" "$HOME/software"

extract_tarballs() {
  wget -c --show-progress -O - "$1" | tar -xzf - -C  "$HOME/software"
}

# Neovim
extract_tarballs "https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz"

# Go compiler
extract_tarballs "https://go.dev/dl/go1.20.7.linux-amd64.tar.gz"

# Hugo
extract_tarballs "https://github.com/gohugoio/hugo/releases/download/v0.116.1/hugo_0.116.1_linux-amd64.tar.gz"

# ngrok
extract_tarballs "https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz"

# hurl
extract_tarballs "https://github.com/Orange-OpenSource/hurl/releases/download/4.0.0/hurl-4.0.0-x86_64-linux.tar.gz"

# xdg-ninja
wget -P "$HOME/downloads/development" -c --show-progress \
  https://github.com/b3nj5m1n/xdg-ninja/archive/refs/heads/main.zip

unzip "$HOME/downloads/development/main.zip" -d "$HOME/software"

# Lua interpreter
sudo apt install -y lua5.4
