# General
alias c="clear"
alias v="nvim"
alias la="ls -A"
alias ll="ls -lAh"
alias mkdir="mkdir -pv"
alias rmdir="rmdir -pv"
alias xcp="xclip -selection clipboard"
alias cpimg="xclip -selection clipboard -t image/png -i"
alias pkgsearch="dpkg -l | grep"
alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"

# Environment
alias mergex="xrdb -merge $XDG_CONFIG_HOME/X11/xresources"
alias pyserver="python3 -m http.server --directory"

# APT
alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias autopurge="sudo apt autopurge"
alias autoclean="sudo apt autoclean"
alias uplist="apt list --upgradable"

# trash-cli
alias trp="trash-put"
alias trl="trash-list"
alias trr="trash-restore"

# Miscellaneous
alias myip="curl ifconfig.co/json"

cheat() {
  curl -L "cheat.sh/$1"
}

# File confirmation
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -Iv"

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

# yt-dlp
alias ytmp3="yt-dlp -x --audio-format mp3 --embed-metadata --restrict-filenames"
alias yt480="yt-dlp -S 'res:480'"
alias yt360="yt-dlp -f 18"
alias ytformat="yt-dlp --list-formats"

# Resource monitoring
alias free="free -h"
alias df="df -h"
alias psa="ps auxf | less"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem="ps auxf | sort -nr -k 4 | less"
alias pscpu="ps auxf | sort -nr -k 3 | less"
alias dirsize="du -had 1 | sort -hr"

# Network
alias wifion="nmcli radio wifi on"
alias wifioff="nmcli radio wifi off"
alias wifilist="nmcli device wifi list"
alias wificonn="nmcli device wifi connect --ask"
alias netstats="nmcli device status"
alias netup="nmcli connection up --ask"
alias netdc="nmcli device disconnect"

wifipass() {
  nmcli connection show "$1" -s | grep psk
}

# systemd
alias shutdown="systemctl poweroff"
alias reboot="systemctl reboot"
alias allservices="systemctl list-units --type service"
alias fileservices="systemctl list-units-files --type service"
alias bootlogs="journalctl --boot"
alias criticallogs="sudo journalctl -p 3 -xb"
alias sessionst="loginctl session-status"

# Archive extraction
ex () {
  if [ -f "$1" ]; then
    case "$1" in
      *.tar.bz|*.tar.bz2|*.tbz|*.tbz2) tar xjf "$1" ;;
      *.tar.gz|*.tgz) tar xzf "$1" ;;
      *.tar.xz|*.txz) tar xJf "$1" ;;
      *.tar) tar xf "$1" ;;
      *.bz2) bunzip2 "$1" ;;
      *.rar) unrar x "$1" ;;
      *.gz) gunzip "$1" ;;
      *.zip) unzip "$1" ;;
      *.Z) uncompress "$1" ;;
      *.7z) 7z x "$1" ;;
      *.tar.zst) unzstd "$1" ;;
      *.deb) ar x "$1" ;;
      *) echo "'$1' cannot be extracted with ex()" ;;
    esac
  else
    echo "'$1' is not a valid file."
  fi
}
