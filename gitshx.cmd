@echo off
echo vvvv Creating here the source folder (/x or X:)
cd
echo Any key to continue, Ctrl-C to break...
pause
GitPortable\App\Git\bin\git.exe clone http://github.com/bartgo/dotfiles dotfiles
mkdir x
subst x: x
move dotfiles x
copy x\dotfiles\.*.* GitPortable\Data\home
cd GitPortable\App\Git
"Git Bash.vbs"
