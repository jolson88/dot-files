source ~/.antigen/antigen.zsh
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

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

## Path
export PATH="$HOME/.bin:$HOME/.kerl:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

eval "$(rbenv init - --no-rehash)"

export GOPATH="$HOME/Go"
