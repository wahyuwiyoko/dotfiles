XDG_CURRENT_DESKTOP="sway"

if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
  . "$HOME/.local/bin/env-var"
fi

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
  export XDG_CURRENT_DESKTOP
  export MESA_SHADER_CACHE_DISABLE=1

  case "$XDG_CURRENT_DESKTOP" in
    "i3"|"bspwm")
      exec startx -- "$HOME/.config/X11/xserverrc"
    ;;
    "sway")
      export MOZ_ENABLE_WAYLAND=1
      exec sway
    ;;
  esac
fi
