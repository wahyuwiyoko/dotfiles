if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
  . "$HOME/.local/bin/env-var"
fi

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = "1" ]; then
  exec startx -- "$HOME/.config/X11/xserverrc"
fi
