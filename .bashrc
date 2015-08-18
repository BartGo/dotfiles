function virtualenv_prompt() {
    if [ -n "$VIRTUAL_ENV" ]; then
        echo "(in venv ${VIRTUAL_ENV##/*/})"
    fi
}

PYTHONDONTWRITEBYTECODE=True

export PS1='\n\[\e[1;30m\]$(virtualenv_prompt)\n\[\e[0m\]\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
export WORKON_HOME=~/.local/share/virtualenvs
export PYTHONDONTWRITEBYTECODE

# if [ -x /usr/games/cowsay -a -x /usr/games/fortune ]; then
#    fortune -s | cowsay -f `ls -1 /usr/share/cowsay/cows/ | sort -R | head -1` -n
# fi

# added by travis gem
# [ -f C:/Users/xxxxx/.travis/travis.sh ] && source C:/Users/xxxxx/.travis/travis.sh
