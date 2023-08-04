# Dotfiles

i3, bspwm, Sway, and many other software configurations and scripts for my desktop.

I try to avoid using Nerd Fonts or any other font icons, so there are no icons
included on all of my configuration.

## Screenshots

You can find a list of wallpaper that I liked [here](screenshots/wallpapers.md).

### i3 + i3status

My first tiling window manager, because it's well documented for new user.

![i3 with i3status](screenshots/i3.png)

### bspwm + Polybar

I like how bspwm have dynamic tiling and monocle layout.

![bspwm with Polybar](screenshots/bspwm.png)

### Sway + Waybar

I'm glad that there is an _i3-like_ for Wayland. It's my main window
manager by now, just because it's smoother and simpler than X11.

![Sway with Waybar](screenshots/sway.png)

## Systems

- Distribution: Debian Bookworm
- Shell: Bash
- Init system: systemd
- Window manager: i3, bspwm, and Sway
- Status bar: i3status, i3blocks, Polybar, swaybar, and Waybar
- Network manager: NetworkManager
- Notification daemon: Dunst (X11) and Mako (Wayland)
- Screen locker: i3lock (X11) and swaylock (Wayland)
- Backlight controller: light

## Software

- Terminal: Alacritty
- Application launcher: Rofi (X11) and Fuzzel (Wayland)
- Firewall manager: UFW
- Wallpaper switcher: hsetroot (X11)
- Text editor: Neovim
- Image viewer: imv

## Note

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

## Special Thanks

- [Addy](https://github.com/addy-dclxvi)
- [Derek Taylor](https://gitlab.com/dwt1)
- [drewgrif](https://github.com/drewgrif)
- [Eric Murphy](https://github.com/ericmurphyxyz)
- [Ilham](https://github.com/ilhamisbored)
- [Rosé Pine](https://rosepinetheme.com/)
