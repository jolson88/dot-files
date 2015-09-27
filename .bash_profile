if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[00;32m\]\u\[\033[00;36m\] [\W]\[\033[00;33m\]$(__git_ps1) \[\033[00;36m\]\$\[\033[00m\] '

export HOMEBREW_GITHUB_API_TOKEN=5153897fc8a5286003eab9c7c1d2f049825e5836
