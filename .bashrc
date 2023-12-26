# Prevent overwrite files
# Use | to manually overwrite a file
# Example: echo "output" >| file.txt
set -o noclobber

# Enable escape character on echo command
shopt -s xpg_echo

# Disable ctrl+s & ctrl+q (used to pause terminal input)
stty -ixon

# Customize bash prompt
PS1="\[\033[40m\] \[\033[1;34m\]\w \[\033[0m\] "
PS2="\[\033[1;36m\]>\[\033[0m\] "

# Source fzf key bindings
if [ -f /usr/share/doc/fzf/examples/key-bindings.bash ]; then
  . /usr/share/doc/fzf/examples/key-bindings.bash
fi

# Environment variables for interactive login shell
export GPG_TTY="$(tty)"
