# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH 
# Path to your oh-my-zsh installation.
export ZSH=/Users/qodot/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME='bullet-train'

# bulle-train theme
export BULLETTRAIN_PROMPT_ORDER=(time status aws virtualenv custom dir git hg cmd_exec_time)
export BULLETTRAIN_STATUS_EXIT_SHOW=true
export BULLETTRAIN_TIME_BG='black'
export BULLETTRAIN_TIME_FG='white'
export BULLETTRAIN_VIRTUALENV_BG='green'
export BULLETTRAIN_VIRTUALENV_FG='black'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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

plugins=(zsh-autosuggestions zsh-completions zsh-syntax-highlighting direnv)
autoload -Uz compinit
source $ZSH/oh-my-zsh.sh

# User configuration

# bin
export PATH="/Users/qodot/bin:$PATH"

# lang
export LANG="ko_KR.UTF-8"
export LC_ALL="ko_KR.UTF-8"

# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib -L/usr/local/opt/openssl/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include -I/usr/local/opt/openssl/include"
# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"

# editor
alias vi='/usr/local/bin/nvim'
export EDITOR='/usr/local/bin/nvim'

# default commands alias
alias ls="lsd -a"
alias ll="lsd -la"
alias lt="lsd --tree"
alias top="htop"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# git
alias gl="tig"
alias gs='git status'
alias gst='git stash'
alias ga='git add -p'
alias gaa='git add .'
alias gc='git commit -v'
alias gf='git fetch'
alias gpl='git pull'
alias gps='git push'
alias gch='git checkout'
alias gr='git rebase'

function gd() {
    if [[ "$1" == "" ]]
    then
        target="."
    else
        target="$1"
    fi

    git diff ${target} | delta
}

# python
export PYTHONBREAKPOINT="pudb.set_trace"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH="$HOME/.poetry/bin:$PATH"

# golang
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)

# node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export PATH="$PATH:/Users/qodot/.nvm/versions/node/v14.15.4/bin/node"

# mysql
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# direnv
eval "$(direnv hook $SHELL)"
