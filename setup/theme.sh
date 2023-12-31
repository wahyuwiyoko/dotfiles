#!/bin/sh

# Create downloaded themes, local themes, and icons directory
mkdir -p "$HOME/downloads/themes" "$HOME/.local/share/themes" "$HOME/.local/share/icons"

extract_tarballs() {
  wget -c --show-progress -O - "$1" | tar -xzf - -C  "$HOME/downloads/themes"
}

# Rosé Pine GTK and icon theme
extract_tarballs "https://github.com/rose-pine/gtk/releases/download/v2.1.0/gtk3.tar.gz"
extract_tarballs "https://github.com/rose-pine/gtk/releases/download/v2.1.0/rose-pine-icons.tar.gz"

# Catppuccin cursor theme
wget -P "$HOME/downloads/themes" -c --show-progress \
  https://github.com/catppuccin/cursors/releases/download/v0.2.0/Catppuccin-Mocha-Dark-Cursors.zip

# Move theme, icon, and cursor theme in local directory
mv "$HOME/downloads/themes/gtk3/rose-pine-gtk" "$HOME/.local/share/themes"
mv "$HOME/downloads/themes/icons/rose-pine-icons" "$HOME/.local/share/icons"
unzip "$HOME/downloads/themes/Catppuccin-Mocha-Dark-Cursors.zip" -d "$HOME/.local/share/icons"

# Update the icon cache
gtk-update-icon-cache
