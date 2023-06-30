# Prevent overwrite files
# Use | to manually overwrite a file
# Example: echo "output" >| file.txt
set -o noclobber

# Enable escape character on echo command
shopt -s xpg_echo

# Customize bash prompts
arrow='\[\033[1;36m\]>\[\033[0m\] '

PS1="\[\033[1;34m\]\w $arrow"
PS2=$arrow

# Environment variables
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export PATH=$PATH:~/go/bin
export EDITOR=nvim
export BROWSER="firefox --private-window"
export GPG_TTY=$(tty)
