# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/dw.seo/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/dw.seo/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish


# navigation
alias mb='cd ~/workspace/monitor-bot/'
alias psa='cd ~/workspace/preface-service-api/'
alias psw='cd ~/workspace/preface-service-web/'
alias pfa='cd ~/workspace/preface-fund-api/'
alias t='cd ~/workspace/tight/'
alias p='cd ~/workspace/preface/'
alias h ='cd ~/workspace/high/'

# git
alias g='git'
alias gl='git log --graph --pretty=format:\'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\' --abbrev-commit'
alias gs='git status'
alias gd='git diff --word-diff'
alias gsd='git sd'
alias ga='git add -p'
alias gc='git commit -v'
alias gpl='git pull'
alias gps='git push'
alias gch='git checkout'
alias gf='git fetch'
alias gm='git merge'

# blog
alias pc='~/.pyenv/versions/blog/bin/python ~/settings/pelican_content.py; ~/.pyenv/versions/blog/bin/pelican ~/blog/content'

# wiki
alias pw='python ~/settings/wiki_publish.py; cd ~/wiki; git add .; git commit -m "publish wiki"; git push origin master'

# vim
alias vi='/usr/local/Cellar/vim/8.0.0002/bin/vim'
set -x EDITOR /usr/local/Cellar/vim/8.0.0002/bin/vim

# sublime text
set -x PATH $PATH ~/bin
alias sb='subl'

# pyenv
set -x PYENV_ROOT ~/.pyenv
set -x PATH $PATH $HOME/.pyenv/bin
. (pyenv init - | psub)
. (pyenv virtualenv-init - | psub)

# autoenv.fish
. ~/.config/fish/autoenv.fish

# node 
set -x PATH $PATH /usr/local/Cellar/node/5.2.0/bin

# postgresql
alias pgstart='postgres -D /usr/local/var/postgres'

# rabbitmq
set -x PATH $PATH /usr/local/sbin

# django
alias pm='python manage.py'
alias pms='python manage.py runserver 127.0.0.1:8001'

# preface-fund-api
set -x FLASK_APP wsgi.py
set -x FUND_API_ENVIRONMENT local
