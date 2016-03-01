# Path to your oh-my-zsh installation.
export ZSH=/Users/jolson/.oh-my-zsh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export HOMEBREW_GITHUB_API_TOKEN="64c1900190a85675a99b369cce89d6e996e05502"
export KUBECONFIG="/Users/jolson/.kube/concur-config:/Users/jolson/.kube/config"
# export MANPATH="/usr/local/man:$MANPATH"

# PROMPT
export PROMPT="%{$fg[cyan]%}%c \$(git-radar --zsh --fetch) %{$fg[cyan]%}$ %{$reset_color%}"

# PATH
export PATH="$HOME/.bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
