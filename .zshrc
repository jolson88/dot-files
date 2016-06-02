source /usr/share/zsh/scripts/antigen/antigen.zsh
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

## Keys
eval $(keychain --eval --quiet --noask id_rsa)

## Aliases
alias ls='ls --color=auto'
alias pst='xsel --clipboard --output'
alias cpy='xsel --clipboard --input'
alias luxoff='luxafor.py -c 79'

## We're done!
antigen apply

export NVM_DIR="/home/jolson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa

export PATH=$PATH:$HOME/.bin
