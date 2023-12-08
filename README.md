# Dotfiles

i3, bspwm, Sway, and many other software configurations for desktop.

All setup and installer scripts are available in [setup](setup/) directory.

I also have Neovim configuration that you can check in my
[nvim repository](https://github.com/wahyuwiyoko/nvim).

You can find a list of wallpapers that I liked in
[wallpapers.md](wallpapers.md).

## i3 + i3status

![i3 with i3status](screenshots/i3.png)

## bspwm + Polybar

![bspwm with Polybar](screenshots/bspwm.png)

## Sway + Waybar

![Sway with Waybar](screenshots/sway.png)

## Systems

- Distribution: Debian
- Shell: Bash
- Init system: systemd
- Display server: X11 and Wayland
- Window manager: i3, bspwm, and Sway
- Status bar: i3status, i3blocks, Polybar, swaybar, and Waybar
- Multimedia server: PipeWire with WirePlumber and ALSA for compatibility
- Notification daemon: Dunst (X11) and Mako (Wayland)
- Screen locker: i3lock (X11) and swaylock (Wayland)
- Backlight controller: light

## Notes

- Different distributions may have different packages name.
- View the scripts and configuration files first before using it.
- Change the configurations according to your software and hardware that
  you need.
- This setup is configured at 1366x768 with 96 DPI. Some of them may be break
  on lower or higher screen resolution.
- Most of all configuration are themed with Rosé Pine theme.
- No Nerd Fonts are included in any configuration files. Only JetBrains
  Mono and Inter font are mostly I used.
- If you want to start X manually using `startx`, modify the
  [~/.config/X11/xsession](.config/X11/xsession) file and add `xinput`
  configuration before execute the window manager to set your input devices
  properly.

## Tips

- For more details about my setups and some packages that I used, you can read
  [my Debian setup](https://wahyuwiyoko.github.io/blog/post/my-debian-setup/)
  post.
- I also had an article
  [how to enable touchpad tap-to-click](https://wahyuwiyoko.github.io/blog/post/enable-touchpad-tap-to-click/)
  if you are curios how to enable it manually.
- If you want sxhkd to have like i3 binding mode, you can do that by following
  the example [issue](https://github.com/baskerville/sxhkd/issues/58).
- To disable bluetooth:
  ```bash
  sudo systemctl disable bluetooth
  sudo systemctl mask bluetooth.target
  ```
- If you want to tweak Xorg driver for Intel graphics, see the manual pages for
  more details: `man intel`
- To know what keybinds pressed, use `xev` for X11, and `wev` for Wayland.
- If you have a cursor theme that stored in system-wide (`/usr/share/icons`)
  and want to use for spesific/local user, symlink the icon cursor directory to
  `~/.local/share/icons` and change the `Inherits` value inside
  `~/.local/share/icons/default/index.theme` according to your icons directory
  name.

## Special Thanks

- [Addy](https://github.com/addy-dclxvi)
- [Derek Taylor](https://gitlab.com/dwt1)
- [drewgrif](https://github.com/drewgrif)
- [Eric Murphy](https://github.com/ericmurphyxyz)
- [Ilham](https://github.com/ilhamisbored)
- [Rosé Pine](https://rosepinetheme.com/)
