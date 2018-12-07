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

cd ~

#git clone https://github.com/nanorc/nanorc.git
apt-get update
apt-get install -y nano
apt-get install -y jed
apt-get install -y ne
apt-get install -y vim
apt-get install -y ruby-full
apt-get install -y git-core
apt-get install -y tig
apt-get install -y mc
apt-get install -y tmux
apt-get install -y htop
apt-get install -y python
apt-get install -y python-dev
apt-get install -y python-setuptools python-software-properties
apt-get install -y build-essential
apt-get install -y python-pip
apt-get install -y fortune
apt-get install -y rubygems ruby1.9.3 ruby1.9.3-dev ruby2.1 ruby2.1-dev ruby-switch
# ruby-switch --set ruby2.1
apt-get install -y rhc
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh

pip install --user --upgrade pudb ipython ptpython
pip install --user --upgrade pip wheel virtualenv pew vex tox
pip install --user --upgrade joe mercurial bumpversion pipdeptree yolk

gem install travis -v 1.7.7 --no-rdoc --no-ri

