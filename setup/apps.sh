#!/bin/sh

# For general applications that can be run on either X11 and Wayland

# Applications
sudo apt install -y alacritty firefox-esr lf mpv cmus zathura pass newsboat

# Tools
sudo apt install -y ripgrep fd-find plocate tmux yt-dlp fzf \
  shellcheck libimage-exiftool-perl trash-cli

# Update database for plocate package
sudo updatedb

# Choose default terminal emulator
update-alternatives --config x-terminal-emulator