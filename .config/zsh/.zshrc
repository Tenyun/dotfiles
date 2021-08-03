# Terminal color setting
export TERM="xterm-256color"
# Laguage settings
export LANG=de_DE.UTF-8
export LC_COLLATE=C
export LC_CTYPE=de_DE.UTF-8
export LC_NUMERIC=C

## History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.cache/zsh/history"
[ "$HISTSIZE" -lt 10000000 ] && HISTSIZE=10000000
[ "$SAVEHIST" -lt 10000000 ] && SAVEHIST=10000000

## History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

# Prompt
# see ~/.config/starship.toml for configuration
eval "$(starship init zsh)"

#zstyle ':completion:*' special-dirs true

# Alias
source ~/.config/zsh/zsh_aliases

autoload -Uz compinit
zstyle ':completion:*:*:*:*:*' menu select
# completion
zmodload -i zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Autosuggestion settings
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

freload() { while (( $# )); do; unfunction $1; autoload -U $1; shift; done }

# Where to look for autoloaded function definitions
fpath=(~/.config/zsh/zfunc/ $fpath)

# Autoload all shell functions from all directories in $fpath (following
# symlinks) that have the executable bit on (the executable bit is not
# necessary, but gives you an easy way to stop the autoloading of a
# particular shell function). $fpath should not be empty for this to work.
for func in $^fpath/*(N-.x:t); autoload $func

# automatically remove duplicates from these arrays
typeset -U path cdpath fpath manpath

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

WORDCHARS=''

unsetopt menu_complete   # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu         # show completion menu on successive tab press

# Source plugins
# broot
source ~/.config/broot/launcher/bash/br
# zsh-autosuggestions
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# sudo
source ~/.config/zsh/plugins/sudo/sudo.plugin.zsh
# systemd
source ~/.config/zsh/plugins/systemd/systemd.plugin.zsh
# gitfast
source ~/.config/zsh/plugins/gitfast/gitfast.plugin.zsh
# golang
setopt complete_in_word
setopt always_to_end
source ~/.config/zsh/plugins/golang/golang.plugin.zsh
# fzf
source ~/.config/zsh/plugins/fzf/fzf.plugin.zsh
# ssh-agent
source ~/.config/zsh/plugins/ssh-agent/ssh-agent.plugin.zsh
# extract
source ~/.config/zsh/plugins/extract/extract.plugin.zsh
# zsh_reload
source ~/.config/zsh/plugins/zsh_reload/zsh_reload.plugin.zsh
# zsh-fast-syntax-highlighting
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
