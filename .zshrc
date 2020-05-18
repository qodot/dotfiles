123

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
plugins=(zsh-autosuggestions zsh-completions zsh-syntax-highlighting)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh



# User configuration

# bin
export PATH="/Users/qodot/bin:$PATH"

# lang
export LANG="ko_KR.UTF-8"
export LC_ALL="ko_KR.UTF-8"

# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"

# editor
alias vi='/usr/local/bin/nvim'
export EDITOR='/usr/local/bin/nvim'
alias md='/usr/local/bin/macdown'

# list
alias ls="exa --color always --color-scale --icons"
alias ll="exa --long --color always --color-scale --icons"
alias lt="exa --tree --color always --color-scale --icons"
# alias ls='gls --color --ignore "*.pyc" --ignore "__pycache__"'
# alias ll='gls -al --color --ignore "*.pyc" --ignore "__pycache__"'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# git
alias gl="tig"
alias gs='git status'
alias gd='git diff'
alias gst='git stash'
alias ga='git add -p'
alias gaa='git add .'
alias gc='git commit -v'
alias gf='git fetch'
alias gpl='git pull'
alias gps='git push'
alias gch='git checkout'
alias gr='git rebase'
alias gpsstage='git branch -D stage && git checkout -b stage && git push -f upstream stage'
alias gpsstaging='git branch -D staging && git checkout -b staging && git push -f upstream staging'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# golang
export PATH=$PATH:/usr/local/go/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# imagemagick
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

# postgresql
export PATH="/usr/local/Cellar/postgresql@9.4/9.4.23/bin:$PATH"
alias runpostgres='docker run --rm --name web-db -p 5432:5432 -v /Users/qodot/workspace/styleshare/web/Dockerfiles/infra/web-db/data:/var/lib/postgresql/data -e LC_ALL=ko_KR.utf8 styleshare/web-db:10'

# mysql
export PATH="/usr/local/Cellar/mysql@5.6/5.6.43/bin:$PATH"

# dynamodb local
export DYNAMO_ENDPOINT=http://localhost:9988
alias rundynamo='docker run --rm --name dynamodb -p 9988:9988 -v $(pwd)/Dockerfiles/infra/dynamodb/data:/data amazon/dynamodb-local:1.11.477 -jar DynamoDBLocal.jar --port 9988 -sharedDb -dbPath /data'

# rabbitmq
export PATH="/usr/local/Cellar/rabbitmq/3.7.14/sbin:$PATH"

# styleshare
alias sw='cd ~/workspace/styleshare/web'
alias sn='cd ~/workspace/styleshare/notification'
alias cs='cd ~/workspace/styleshare/configshare'
alias is='cd ~/workspace/styleshare/imageshare'
alias si='cd ~/workspace/styleshare/infra'
alias cf='cd ~/workspace/styleshare/classifier'

alias lsw='python setup.py flake8'
alias tsw='python manage.py test'

# url-shortener
export URL_SHORTENER_PG_URI='postgresql://postgres:1234@localhost:5432/url-shortener'
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/qodot/workspace/styleshare/notification/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/qodot/workspace/styleshare/notification/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/qodot/workspace/styleshare/notification/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/qodot/workspace/styleshare/notification/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/qodot/workspace/styleshare/notification/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/qodot/workspace/styleshare/notification/node_modules/tabtab/.completions/slss.zsh
export PATH="/usr/local/sbin:$PATH"
