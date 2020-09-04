# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="qutebrowser"
export browser="qutebrowser"
export READER="zathura"
export FILE="pcmanfm"
export GTK_SCALE=1
export VDPAU_DRIVER="va_gl"
export STATUSBAR="dwmblocks"
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

export SSH_AUTH_SOCK DEFAULT="${XDG_RUNTIME_DIR}/ssh-agent.socket"
