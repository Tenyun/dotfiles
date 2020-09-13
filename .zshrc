# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/tenyun/.oh-my-zsh

export TERM="xterm-256color"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"
SPACESHIP_HG_SHOW="false"
SPACESHIP_HG_BRANCH_SHOW="false"
SPACESHIP_HG_STATUS_SHOW="false"
SPACESHIP_NODE_SHOW="false"
SPACESHIP_RUBY_SHOW="false"
SPACESHIP_ELM_SHOW="false"
SPACESHIP_ELIXIR_SHOW="false"
SPACESHIP_XCODE_SHOW_LOCAL="false"
SPACESHIP_SWIFT_SHOW_LOCAL="false"
SPACESHIP_PHP_SHOW="false"
SPACESHIP_HASKELL_SHOW="false"
SPACESHIP_JULIA_SHOW="false"
SPACESHIP_DOCKER_SHOW="false"
SPACESHIP_DOCKER_CONTEXT_SHOW="false"
SPACESHIP_AWS_SHOW="false"
SPACESHIP_VENV_SHOW="false"
SPACESHIP_CONDA_SHOW="false"
SPACESHIP_PYENV_SHOW="fasle"
SPACESHIP_DOTNET_SHOW="false"
SPACESHIP_EMBER_SHOW="false"
SPACESHIP_KUBECTL_SHOW="false"
SPACESHIP_KUBECTL_VERSION_SHOW="false"
SPACESHIP_KUBECONTEXT_SHOW="false"
SPACESHIP_TERRAFORM_SHOW="false"
SPACESHIP_DIR_TRUNC="3"
SPACESHIP_PROMPT_ADD_NEWLINE="false"

# ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator custom_arch_icon dir vcs dir_writable)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ram time battery)
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_MODE="awesome-fontconfig"

# POWERLEVEL9K_CUSTOM_ARCH_ICON="echo "
# POWERLEVEL9K_CUSTOM_ARCH_ICON_BACKGROUND=012
# POWERLEVEL9K_CUSTOM_ARCH_ICON_FOREGROUND=000

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast pip sudo systemd zsh-autosuggestions golang fzf ssh-agent extract zsh_reload)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=de_DE.UTF-8
export LC_COLLATE=C
export LC_CTYPE=de_DE.UTF-8
export LC_NUMERIC=C

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

zstyle ':completion:*' special-dirs true

. ~/.zsh_aliases

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'

#fpath=(~/.zfunc/ $fpath)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /home/tenyun/.config/broot/launcher/bash/br

