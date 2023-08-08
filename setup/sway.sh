#!/bin/sh

# Wayland protocol and Sway
sudo apt install -y wayland-protocols wayland-utils sway xwayland

# Utilities
sudo apt install -y swaybg swaylock wlr-randr clipman \
  xdg-desktop-portal-wlr libglib2.0-bin wev wl-clipboard waybar mako-notifier \
  libgtk-layer-shell-dev

# Applications
sudo apt install -y swayimg fuzzel grimshot wf-recorder
