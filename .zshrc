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

eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa

export PATH=$PATH:$HOME/.bin
