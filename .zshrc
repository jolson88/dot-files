source ~/Source/lib/antigen/antigen.zsh
antigen use oh-my-zsh

## Antigen Bundles
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle kennethreitz/autoenv
antigen bundle zsh-users/zsh-syntax-highlighting

## Antigen Theme
antigen theme bira

## We're done!
antigen apply

export PATH=$PATH:$HOME/.bin:$HOME/Library/Python/2.7/bin
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export GOPATH=$(go env GOPATH)
export PATH="$PATH:$(go env GOPATH)/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jolson88/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/jolson88/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jolson88/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/jolson88/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

alias ssh-sea='ssh -o ProxyCommand="ssh -W %h:%p -q jolson@seabast00.concurasp.com"'
alias ssh-copy-id-sea='ssh-copy-id -o ProxyCommand="ssh -W %h:%p -q jolson@seabast00.concurasp.com"'
alias scp-sea='scp -o ProxyCommand="ssh -W %h:%p -q jolson@seabast00.concurasp.com"'

[ -f /usr/local/opt/dvm/dvm.sh ] && . /usr/local/opt/dvm/dvm.sh

export PATH="$HOME/.bin:$PATH"

export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
source $(brew --prefix nvm)/nvm.sh

eval "$(rbenv init - --no-rehash)"

export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export GOPATH="$HOME/Go"

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"
