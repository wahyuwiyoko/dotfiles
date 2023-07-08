# Prevent overwrite files
# Use | to manually overwrite a file
# Example: echo "output" >| file.txt
set -o noclobber

# Enable escape character on echo command
shopt -s xpg_echo

# Customize bash prompts
PS1="\[\033[1;34m\]\w \[\033[1;36m\]>\[\033[0m\] "
PS2="\[\033[1;36m\]>\[\033[0m\] "

# Environment variables for interactive login shell
export GPG_TTY="$(tty)"
export PATH="$PATH:$GOPATH/bin"
