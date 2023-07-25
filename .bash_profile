if [[ -f $HOME/.bashrc ]]; then
  source $HOME/.bashrc
fi

if [[ ! $DISPLAY && $XDG_VTNR == 1 ]]; then
  exec startx -- $HOME/.config/X11/xserverrc
fi
