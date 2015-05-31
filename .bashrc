#cd /x/
#echo.
#bash --version
#echo.


export EDITOR=joe

function virtualenv_prompt() {
    if [ -n "$VIRTUAL_ENV" ]; then
        echo "(${VIRTUAL_ENV##*/}) "
    fi
}

export PS1='\[\e[1;32m\]$(virtualenv_prompt)\[\e[0m\]\W\$ '
