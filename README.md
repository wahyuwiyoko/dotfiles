# Dotfiles

## Systems

- Distribution: Debian Bookworm
- Shell: Bash
- Window manager: i3
- Status bar: i3status
- Network manager: NetworkManager
- Notification daemon: Dunst
- Screen locker: i3lock
- Brightness manager: brightnessctl

## Software

- Terminal: Alacritty
- Application launcher: dmenu
- Firewall manager: UFW
- Wallpaper switcher: xwallpaper
- Text editor: Neovim
- Image viewer: nsxiv

## Details

For more details how to set up and installing the packages,
please read my post:
[My Debian Setup with i3wm](https://wahyuwiyoko.github.io/blog/linux/my-debian-setup-with-i3wm/).

Please note that there are some configuration must be changed
according to your hardware and applications you need.

For example, in `~/.config/i3/config` file, you may need to add these line to enable
touchpad tap-to-click functionality if you are using a display manager:

```
exec --no-startup-id xinput set-prop "<your touchpad device>" "libinput Tapping Enabled" 1
```

Also it is the same as if you want to start X manually using `startx` instead
of using display manager by modifying the `~/.config/X11/xsession` file and
add `xinput` configuration before execute the window manager.

Beside of that, you can read my post on
[how to enable touchpad tap-to-click](https://wahyuwiyoko.github.io/blog/linux/enable-touchpad-tap-to-click/)
for more detail about how to enable it.
