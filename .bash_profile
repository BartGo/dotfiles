# export PATH='~/.local/bin:$PATH'
# env | grep PATH
# 
export WORKPROXY="proxyserver.example.com"
export WORKPPORT="8080"
#

hostname
date
read -r -p "Proxy user: " puser
read -r -s -p "Password: " ppass
proxy_str="$puser:$ppas@$WORKPROXY:$WORKPPORT"
export HTTP_PROXY="http://$proxy_str"
export HTTPS_PROXY="https://$proxy_str"
export http_proxy="$HTTP_PROXY"
export https_proxy="$HTTPS_PROXY"
echo
echo ""
cd ~
cd /x
alias ll="ls -al"
alias la="ls -al"
alias dir="ls -al"
alias edit="far /e"
