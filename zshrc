# default commands alias
alias ls="lsd -a"
alias ll="lsd -la"
alias lt="lsd --tree"
alias top="htop"
alias ps="procs --tree"

# lang
export LANG="ko_KR.UTF-8"
export LC_ALL="ko_KR.UTF-8"

# bin
export PATH="/Users/qodot/bin:$PATH"

# homebrew
export HOMEBREW_PREFIX="/opt/homebrew"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# editor
alias vi='/opt/homebrew/bin/nvim'
export EDITOR='/opt/homebrew/bin/nvim'

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

# direnv
eval "$(direnv hook zsh)"

# python
export PYTHONBREAKPOINT="pudb.set_trace"
export PATH="$HOME/.local/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# node
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.2.0/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

# database
export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"

# java android
export PATH="/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/bin":$PATH
export PATH="/Users/qodot/Library/Android/sdk/platform-tools:$PATH"

# zsh
eval "$(starship init zsh)"

# bun completions
[ -s "/Users/qodot/.bun/_bun" ] && source "/Users/qodot/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
