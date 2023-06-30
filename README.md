# Dotfiles

## Systems

- Distribution: Debian Bookworm
- Display manager: LightDM
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

For more details how to setup and installing the packages,
please read my post:
[My Debian Setup with i3wm](https://wahyuwiyoko.github.io/blog/linux/my-debian-setup-with-i3wm/).

Please note that in the i3 configs file, there are some configuration must be changed
according to your hardware and applications you need.

For example in `.config/i3/config` file, you may need to change this line:

```
exec xinput set-prop "HTIX5288:00 093A:0255 Touchpad" "libinput Tapping Enabled" 1
```

Which you can read my post on
[how to enable touchpad tap-to-click](https://wahyuwiyoko.github.io/blog/linux/enable-touchpad-tap-to-click/).

In `.config/i3status/config` file, you also need to change the network device name:

```
order += "wireless _first_"

wireless _first_ {
  ...
}
```

To know which network device available on your system,
just enter `nmcli device status` command on terminal.
