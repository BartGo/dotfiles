mkdir /x
cd /x
git clone https://github.com/BartGo/dotfiles
git clone https://github.com/BartGo/python-cuturl
apt-get update
apt-get install mc git tig python3 python3-pip sqlite nano lynx htop tmux screen fortune-mod cowsay

apt-get install locale locales-all
locale
echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
locale-gen && update-locale LANG=en_US.UTF-8

#postgresql postgresql-server postgresql-contrib epel-release nginx mod_wsgi 
