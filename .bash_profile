WINDOW_MANAGER="sway"

if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
  . "$HOME/.local/bin/env-var"
fi

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
  export XDG_CURRENT_DESKTOP="$WINDOW_MANAGER"
  export MESA_SHADER_CACHE_DISABLE=1

  case "$WINDOW_MANAGER" in
    "i3"|"bspwm")
      export MOZ_X11_EGL=1
      exec startx -- "$HOME/.config/X11/xserverrc"
    ;;
    "sway")
      export MOZ_ENABLE_WAYLAND=1
      exec sway
    ;;
  esac
fi
