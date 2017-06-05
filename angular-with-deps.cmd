rem *** open cmd.exe of nodejs, with admin permissions (elevated)

set HTTP_PROXY=
set HTTPS_PROXY=

rem *** proxy for npm
rem #npm config edit
rem #npm config rm proxy
rem #npm config rm https-proxy
rem #npm config set proxy "$HTTP_PROXY"
rem #npm config set https-proxy "$HTTPS_PROXY"

call npm cache clean
call npm rm proxy
call npm config set registry "http://registry.npmjs.org/"
call npm config set strict-ssl false
call npm config list | find "proxy"

rem *** "-g": Install package globally. Global packages are usually for executable commands.
call npm install -g grunt-cli
call npm install -g bower

x:
git clone "https://github.com/angular/angular.js.git"

rem *** https://github.com/angular/angular-phonecat/issues/141
git config --global url."https://".insteadOf git:// 
cd angular.js
call npm install

bower install
grunt package
grunt webserver
start http://localhost:8000/
start http://localhost:8000/build/docs/

