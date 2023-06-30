# General
alias c="clear"
alias la="ls -A"
alias ll="ls -Al"
alias ftclean="fc-cache -fv"
alias searchfont="fc-list | grep"
alias pyserver="python3 -m http.server"
alias xcp="xclip -selection clipboard"
alias pkgsearch="dpkg -l | grep"
alias listgpg="gpg --list-secret-keys --keyid-format long"
alias mergex="xrdb -merge ~/.Xresources"

# Miscellaneous
alias myip="curl ifconfig.co/json"

weather() {
  curl "wttr.in/$*"
}

cheat() {
  curl "cheat.sh/$*"
}

# File confirmation
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Navigation
alias up="cd .."
alias upp="cd ../.."
alias up3="cd ../../.."
alias up4="cd ../../../.."
alias up5="cd ../../../../.."

# yt-dlp
alias yta-best="yt-dlp --extract-audio --audio-format best"
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3"
alias ytv-best="yt-dlp -f bestvideo+bestaudio"

# Resource monitoring
alias freemem="free -h"
alias diskusage="df -h"
alias psall="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias memsort="ps auxf | sort -nr -k 4"
alias cpusort="ps auxf | sort -nr -k 3"
alias dirsize="du -had 1 | sort -hr"

# Network management
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

# Archive extraction
ex () {
  if [ -f "$1" ]; then
    case $1 in
      *.tar.bz2) tar xjf $1    ;;
      *.tar.gz)  tar xzf $1    ;;
      *.bz2)     bunzip2 $1    ;;
      *.rar)     unrar x $1    ;;
      *.gz)      gunzip $1     ;;
      *.tar)     tar xf $1     ;;
      *.tbz2)    tar xjf $1    ;;
      *.tgz)     tar xzf $1    ;;
      *.zip)     unzip $1      ;;
      *.Z)       uncompress $1 ;;
      *.7z)      7z x $1       ;;
      *.tar.xz)  tar xf $1     ;;
      *.tar.zst) unzstd $1     ;;
      *.deb)     ar x $1       ;;
      *) echo "'$1' cannot be extracted with ex()" ;;
    esac
  else
    echo "'$1' is not a valid file."
  fi
}
