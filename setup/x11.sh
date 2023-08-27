#!/bin/sh

# Some of these applications and tools only can be run on X11

# Display server
sudo apt install -y xorg

# Utilities
sudo apt install -y x11-utils xinput dbus-x11 xclip xdotool dunst xsettingsd

# Applications and tools
sudo apt install -y hsetroot xbanish rofi maim nsxiv

# Cache directory for xsession-errors file
mkdir -p "$HOME/.cache/X11"
