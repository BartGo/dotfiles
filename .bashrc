function virtualenv_prompt() {
    if [ -n "$VIRTUAL_ENV" ]; then
        echo "(${VIRTUAL_ENV##*/}) "
    fi
}

export PS1='\[\e[1;31m\]$(virtualenv_prompt)\[\e[0m\]\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

export WORKON_HOME=~/.local/share/virtualenvs
