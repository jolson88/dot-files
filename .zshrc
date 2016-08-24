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

## Helper Aliases
alias tmux="tmux -2"
function tma() {
    tmux a -t "$1"
}
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias src="source ~/.zshrc"
alias erc="nvim ~/.zshrc"
alias ntp="cd ~/source/personal"
alias ntrs="cd ~/source/concur/receipt-service"
alias gs="git status"
alias gaa="git add . && git status"
alias gc="git commit"
alias gp="git push"
alias gpf="git push --force"
alias gu="git fetch --prune && git pull"
alias grm="git rebase master"
function gm() {
    git merge "$1"
}
function gco() {
    git checkout "$1"
}
function gcob() {
    git checkout master && git pull && git checkout -b "$1"
}
function gri() {
    git rebase -i "$1"
}

## Alias
REQUEST=$HOME/source/concur/receipt-service/src/tools/request.sh
export RECEIPT_SERVICE_TEST_SAMPLES_PWD=$HOME/source/concur/receipt-service/src/test/samples/post-requests

# Request Tool Get Aliases
alias gl="$REQUEST get local"
alias gd5="$REQUEST get dev5"
alias gqd="$REQUEST get qa_dev"
alias gqp="$REQUEST get qa_prod"
alias g3_2c="$REQUEST get rqa3_2c"

# Request Tool Post Aliases
alias pl="$REQUEST post local"
alias pl_real="$HOME/Drive/Notes/Concur/technical/curl_commands/receipts/archive/local_real.sh"
alias pd5="$REQUEST post dev5"
alias pqd="$REQUEST post qa_dev"
alias pqp="$REQUEST post qa_prod"
alias p3_2c="$REQUEST post rqa3_2c"
alias p3_2c_real="$HOME/Drive/Notes/Concur/technical/curl_commands/receipts/archive/rqa3_real.sh"

# Receipts helpers
alias rdi="npm run dev:install"
alias rds="npm run dev:start"
alias rdrs="npm run dev:restart-and-watch"
alias rrt="npm run dev:run-test 2> /dev/null"
alias rrl="npm run lint 2> /dev/null"
alias rrhard='docker-compose kill -s SIGKILL && docker-compose rm -f --all && docker rmi -f $(docker images -q receiptservice_api) && sudo rm -rf $HOME/data/db && npm run dev:start'
alias rdestroy='docker-compose kill -s SIGKILL && docker-compose rm -f --all && docker rmi -f $(docker images -q receiptservice_api) && sudo rm -rf $HOME/data/db'
alias dclear='docker rm $(docker ps -a -q) || docker rmi $(docker images | grep "MB" | awk "{print $3}")'

## Path
export PATH="$HOME/.bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

eval "$(rbenv init - --no-rehash)"

export GOPATH="$HOME/Go"
