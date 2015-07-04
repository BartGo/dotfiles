# --- to install on a clean Ubuntu:
#cd $HOME
#sudo apt-get install -y git-core
#git clone https://github.com/bartgo/dotfiles
#sudo bash ./dotfiles/setup.sh   

# --- link or copy?
#ln -sb dotfiles/.bash_profile .
#ln -sb dotfiles/.bashrc .
#ln -sb dotfiles/.gitconfig .
#ln -sb dotfiles/.vexrc .
#ln -sb dotfiles/mercurial.ini .
#cp -r dotfiles/vimfiles/* ~/.vim/

# --- locks on apt-get can be removed if needed:
#sudo rm /var/lib/apt/lists/lock
#sudo rm /var/cache/apt/archives/lock

apt-get update
apt-get install -y nano
apt-get install -y jed
apt-get install -y vim
apt-get install -y git-core
apt-get install -y tig
apt-get install -y mc
apt-get install -y tmux
apt-get install -y htop
apt-get install -y python
apt-get install -y python-dev
apt-get install -y python-setuptools
apt-get install -y python-pip
apt-get install -y fortune
apt-get install -y cowsay

pip install --user --upgrade wheel pipdeptree virtualenv pew vex
pip install --user --upgrade joe mercurial


