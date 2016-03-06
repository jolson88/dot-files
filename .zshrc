source ~/source/antigen/antigen.zsh
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

## Aliases
alias ls='ls --color=auto'
alias pst='xsel --clipboard --output'
alias cpy='xsel --clipboard --input'

## We're done!
antigen apply
