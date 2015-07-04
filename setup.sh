#cd $HOME
#sudo apt-get install -y git-core
#git clone https://github.com/bartgo/dotfiles
#sudo bash ./dotfiles/setup.sh   

ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.gitconfig .
ln -sb dotfiles/.vexrc .
ln -sb dotfiles/mercurial.ini .
cp -r dotfiles/vimfiles/* ~/.vim/

apt-get update
apt-get install nano
apt-get install pico
apt-get install joe
apt-get install jed
apt-get install -y vim
apt-get install -y git-core
apt-get install tig
apt-get install mc
apt-get install tmux
apt-get install python
apt-get install fortune
apt-get install cowsay

pip install --user --upgrade wheel pipdeptree virtualenv pew vex
pip install --user --upgrade joe mercurial


