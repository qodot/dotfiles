# user local bin
export PATH="$PATH:/Users/qodot/.local/bin"

# homebrew
export HOMEBREW_PREFIX="/opt/homebrew"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# zsh
eval "$(direnv hook zsh)"
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# use bash as emacs mode (for using ctrl+A)
set -o emacs

# default commands alias
alias ls="lsd -a"
alias ll="lsd -la"
alias lt="lsd --tree"
alias ps="procs --tree"
alias du="dust"
alias grep="rg"

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

# editor
export EDITOR='/usr/local/bin/cursor'
alias vi='/opt/homebrew/bin/nvim'
alias code="cursor"

alias cx="codex --dangerously-bypass-approvals-and-sandbox"
alias cc="claude --dangerously-skip-permissions"
alias oc="opencode"
alias p='pi'
alias h="CLAUDE_CODE_TASK_LIST_ID=tasks happy --yolo"

# python
export PYTHONBREAKPOINT="pudb.set_trace"

# bun completions
[ -s "/Users/qodot/.bun/_bun" ] && source "/Users/qodot/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/qodot/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# postgresql
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@15/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@15/include"

# indentcorp projects
alias sp="cd /Users/qodot/workspace/indent/backend/projects/spray"
alias sp2="cd /Users/qodot/workspace/indent/backend2/projects/spray"
alias ss="cd /Users/qodot/workspace/indent/backend/projects/socialscan"
alias bl="cd /Users/qodot/workspace/indent/backend/projects/blaster"
alias spw="cd /Users/qodot/workspace/indent/frontend/apps/spray-web"

# indentcorp okta
alias oktaspraydev="okta-aws-cli -e -o indentcorp.okta.com -i arn:aws:iam:::saml-provider/okta -c 0oa688nincz2BV1EA697 -a 0oacfdvupcpv6CRSP697 -b -z"
alias oktasprayprod="okta-aws-cli -e -o indentcorp.okta.com -i arn:aws:iam:::saml-provider/okta -c 0oa688nincz2BV1EA697 -a 0oacfdpjhreBuG52j697 -b -z"
alias oktavreviewprod="okta-aws-cli -e -o indentcorp.okta.com -i arn:aws:iam:::saml-provider/okta -c 0oa688nincz2BV1EA697 -a 0oa66zrnmbVPqWCF5697 -b -z"
