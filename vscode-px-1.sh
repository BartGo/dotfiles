#!/bin/bash     

read -p "Proxy user: "  -e user
read -p "Password: " -s -e pass
proxy_str="$user:$pass@server:port"
echo
export HTTP_PROXY="http://$proxy_str"
export HTTPS_PROXY="https://$proxy_str"
export http_proxy=$HTTP_PROXY
export https_proxy=$HTTPS_PROXY
#export | grep proxy
#export | grep PROXY
read -p "Press enter to run VS Code..."
cd /c/"Program Files (x86)"/"Microsoft VS Code"
./Code.exe
read -p "Press enter to exit..."
