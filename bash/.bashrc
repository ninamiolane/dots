function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}

if [[ -f /etc/bash_completion ]]; then
    . /etc/bash_completion
fi
if [[ -f ${HOME}/.bash_completion && -d ${HOME}/.bash_completion.d ]]; then
    . ${HOME}/.bash_completion
fi

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export EDITOR=/usr/bin/vim
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $(parse_git_branch)\$\[\033[00m\] '
export PYTHONPATH=$PYTHONPATH:/Users/ninamiolane/Google\ Drive/My\ Drive/code
export VISUAL=${EDITOR}
