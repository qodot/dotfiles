# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH 
# Path to your oh-my-zsh installation.
export ZSH=/Users/qodot/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME='amuse'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# lang lc
export LANG="ko_KR.UTF-8"
export LC_ALL="ko_KR.UTF-8"

# bin
export PATH="/Users/qodot/bin:$PATH"

# git
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs='git status'
alias gd='git diff --word-diff'
alias gst='git stash'
alias ga='git add -p'
alias gaa='git add .'
alias gc='git commit -v'
alias gpl='git pull'
alias gps='git push'
alias gch='git checkout'
alias gf='git fetch'
alias gm='git merge'

# editor
alias vi='/usr/local/bin/nvim'
export EDITOR='/usr/local/bin/nvim'
alias md='/usr/local/bin/macdown'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ctags
alias pythonctags='ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags . $(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")'

# autoenv
source $(brew --prefix autoenv)/activate.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# imagemagick
export MAGICK_HOME='/usr/local/Cellar/imagemagick@6/6.9.9-20'

# mysql
export PATH="/usr/local/mysql/bin:$PATH"

# navigation
alias ww='/Users/qodot/workspace/wanted/wantedweb'
alias ws='/Users/qodot/workspace/wanted/sally'
alias wb='/Users/qodot/workspace/wanted/backdoor'

# gtbot
export GTBOT_SLACK_TOKEN='xoxb-273506533014-4PUTqO8E13bZQRyi84vN1TUa'
export GTBOT_GOOGLE_TOKEN='AIzaSyCrAbZovVQc_hoymDpO9wXX-UDoWKQt358'
