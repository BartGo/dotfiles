rem *** open cmd.exe of nodejs, with admin permissions (elevated)

rem *** proxy for npm
npm config set proxy http://"user:pass"@squid.mycompany.country:3128

rem *** "-g": Install package globally. Global packages are usually for executable commands.
npm install -g grunt-cli
npm install -g bower

x:
git clone "https://github.com/angular/angular.js.git"

rem *** https://github.com/angular/angular-phonecat/issues/141
git config --global url."https://".insteadOf git:// 
cd angular.js
npm install

bower install
grunt package
grunt webserver
start http://localhost:8000/
start http://localhost:8000/build/docs/

