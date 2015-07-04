#cd $HOME
#apt-get install -y git-core
#git clone https://github.com/bartgo/dotfiles
#./dotfiles/setup.sh   

ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.gitconfig .
ln -sb dotfiles/.vexrc .
ln -sb dotfiles/mercurial.ini .
cp -r dotfiles/vimfiles/* ~/.vim/

apt-get update
alias apti=apt-get install
apti nano
apti pico
apti joe
apti jed
apti -y vim
apti -y git-core
apti tig
apti mc
apti tmux
apti python
apti fortune
apti cowsay

pip install --upgrade wheel pipdeptree virtualenv pew vex \
joe request mercurial splinter WebTest


