alias ll="ls -al"
alias la="ls -al"
alias dir="ls -al"
alias edit="jstar"
alias wedit="far /e"
alias hh="history"
alias hi='echo Hello!'

# alias npp='/c/"Program Files (x86)"/Notepad++/notepad++.exe'
# export PATH='~/.local/bin:$PATH'
# env | grep PATH

# "pew in here"
alias ph='pew in $( echo ${PWD##*/} | sed "s/[^a-z]*//g" ) '

# "pew in here freeze"
alias pf='ph pip freeze'

hostname
date
read -p "Proxy user: "  -e user
read -p "Password: " -s -e pass
proxy_str="$user:$pass@SERVER_HERE:8080"
echo
export HTTP_PROXY="http://$proxy_str"
export HTTPS_PROXY="https://$proxy_str"
export http_proxy=$HTTP_PROXY
export https_proxy=$HTTPS_PROXY
#export | grep HTTP_PROXY
echo ""
cd ~
cd /x
#pwd
