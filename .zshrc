source ~/.antigen/antigen.zsh
antigen use oh-my-zsh

## Antigen Bundles
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

## Antigen Theme
antigen theme bira

## We're done!
antigen apply

eval $(/usr/local/bin/brew shellenv)
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

path=('~/Library/Python/3.8/bin' $path)
path=('~/.tfenv/bin', $path)
export PATH

alias awsl='aws sso login --profile dev'
alias gaa='git add .'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -D'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gs='git status'
alias gpu='git push'
alias gpsu='git push --set-upstream'
alias gpuf='git push --force'
alias gpur='git pull --rebase'
