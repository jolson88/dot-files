if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[00;32m\]\u@\h\[\033[00;36m\] \w\[\033[00;33m\]$(__git_ps1) \[\033[00;36m\] \$\[\033[00m\] '
