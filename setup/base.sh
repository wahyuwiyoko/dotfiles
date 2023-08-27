#!/bin/sh

# Firmware for hardware support
sudo apt install -y firmware-linux firmware-realtek intel-microcode

# Hardware acceleration
sudo apt install -y va-driver-all vainfo libva2 intel-gpu-tools

# Build tools packages needed to build and compile software from source
sudo apt install -y build-essential dkms linux-headers-"$(uname -r)"

# Audio server packages to make audio work properly
sudo apt install -y pipewire pipewire-audio alsa-utils

# Miscellaneous packages for various tasks
sudo apt install -y network-manager xdg-utils bc psmisc ntfs-3g udisks2 \
  curl wget jq libnotify-bin ffmpeg fontconfig ufw command-not-found inxi \
  jmtpfs net-tools zip light desktop-base

# GTK+ packages needed to run GTK+ applications
sudo apt install -y libgtk2.0-0 gtk2-engines gtk2-engines-murrine \
  gtk2-engines-pixbuf

# Sans-serif and monospace fonts
sudo apt install -y fonts-inter fonts-jetbrains-mono

# Update APT database for command-not-found package
sudo apt-file update

# Create the user's home directory
xdg-user-dirs-update

# Dotfiles directory from $HOME to follow XDG base directory
mkdir -p "$HOME/.local/state/bash" "$HOME/.local/state/less" \
  "$HOME/.local/bin" "$HOME/.local/share/gnupg"

# Change gnupg directory permission
chmod g-xr,o-xr "$HOME/.local/share/gnupg"
