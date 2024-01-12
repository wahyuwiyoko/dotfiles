#!/bin/sh

# Create downloaded themes, local themes, and icons directory
mkdir -p "$HOME/downloads/themes" "$HOME/.local/share/themes" "$HOME/.local/share/icons"

extract_tarballs() {
  wget -c --show-progress -O - "$1" | tar -xzf - -C  "$HOME/downloads/themes"
}

# Rosé Pine GTK theme, icon theme, and cursor theme
extract_tarballs "https://github.com/rose-pine/gtk/releases/download/v2.1.0/gtk3.tar.gz"
extract_tarballs "https://github.com/rose-pine/gtk/releases/download/v2.1.0/rose-pine-icons.tar.gz"
wget -P "$HOME/downloads/themes" -c --show-progress \
  https://github.com/rose-pine/cursor/releases/download/v1.1.0/BreezeX-RosePine-Linux.tar.xz

# Move theme, icon, and cursor theme in local directory
mv "$HOME/downloads/themes/gtk3/rose-pine-gtk" "$HOME/.local/share/themes"
mv "$HOME/downloads/themes/icons/rose-pine-icons" "$HOME/.local/share/icons"
tar -xvf "$HOME/downloads/themes/BreezeX-RosePine-Linux.tar.xz" -C "$HOME/.local/share/icons"

# Update the icon cache
gtk-update-icon-cache
