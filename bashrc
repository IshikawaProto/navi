# Navi Shell

## Private tmp
if [ ! -d "$HOME/.tmp" ]; then
	mkdir "$HOME/.tmp"
fi
export TMPDIR="$HOME/.tmp"

## Prompt
if [ $USER = "root" ]; then
	PS_COLOR="31m"
else
	PS_COLOR="32m"
fi
export PS1="\n[01;$PS_COLOR\u@\h[0m : \t : [01;34m\w[0m\n\$ "

## Environment
export EDITOR="vim"
export PAGER="less"

## Aliases
alias ls="ls -F --color"
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"
alias soodo="sudo /bin/bash -l"

## Tab Completion
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi
