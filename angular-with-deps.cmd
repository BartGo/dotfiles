rem *** run with admin permissions (elevated)
rem *** todo: set this also for git bash prompt? or not?
rem *** C:\Windows\System32\cmd.exe /k "C:\Program Files\nodejs\nodevars.bat"

rem *** proxy
npm config set proxy http://"user:pass"@squid.mycompany.country:3128

rem *** "-g": Install package globally. Global packages are usually for executable commands.
npm install -g grunt-cli
npm install -g bower

x:
git clone "https://github.com/angular/angular.js.git"
cd angular.js
npm install

rem *** CRASH

bower install
grunt package
grunt webserver
start http://localhost:8000/
start http://localhost:8000/build/docs/

