if [[ -z "$TMUX" ]] && [ "$SSH_CONNECTION" != "" ]; then
    tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
fi

function virtualenv_prompt() {
    if [ -n "$VIRTUAL_ENV" ]; then
        echo "(in venv ${VIRTUAL_ENV##/*/})"
    fi
}

PYTHONDONTWRITEBYTECODE=True
export PS1='\n\[\e[1;30m\]$(virtualenv_prompt)\n\[\e[0m\]\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
export WORKON_HOME=~/.local/share/virtualenvs
export PYTHONDONTWRITEBYTECODE

# export HTTP_PROXY=http://myproxy:port
# export | grep HTTP_PROXY

# added by travis gem
# [ -f C:/Users/xxxxx/.travis/travis.sh ] && source C:/Users/xxxxx/.travis/travis.sh
