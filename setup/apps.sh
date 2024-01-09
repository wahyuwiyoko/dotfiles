#!/bin/sh

# For general applications that can be run on either X11 and Wayland

# Applications
sudo apt install -y alacritty firefox-esr lf mpv cmus zathura pass newsboat

# Tools
sudo apt install -y ripgrep fd-find tmux yt-dlp fzf intel-gpu-tools \
  shellcheck libimage-exiftool-perl trash-cli playerctl tealdeer

# Choose default terminal emulator
sudo update-alternatives --config x-terminal-emulator

# Create local binary directory
mkdir -p "$HOME/.local/bin"

# miniserve
wget -c --show-progress \
  https://github.com/svenstaro/miniserve/releases/download/v0.25.0/miniserve-0.25.0-x86_64-unknown-linux-gnu

chmod +x miniserve-0.25.0-x86_64-unknown-linux-gnu

mv miniserve-0.25.0-x86_64-unknown-linux-gnu "$HOME/.local/bin/miniserve"
