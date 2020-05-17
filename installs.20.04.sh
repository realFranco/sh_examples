# Franco Gil
# Date: May 16 th, 2020
# Ubuntu 20.04 
# 
# Set of Apps/Packeages required for a working process
#
# some topics to remember
#
# Install .deb a file & dependencies:
#
# sudo dpkg -i /path/to/deb/file.deb
# sudo apt-get install -f
#
# Uncompress .tar.gz file:
#
# tar -xvf file.tar.
#
# Change execution owner for a .sh files
# sudo chmod +x file.sh && ./file.sh


sudo apt-get update
sudo apt-get upgrade


# Enable the Universe repository
sudo add-apt-repository universe


# curl
sudo apt install curl


# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb


# vivaldi
wget https://downloads.vivaldi.com/stable/vivaldi-stable_3.0.1874.38-1_amd64.deb


# xtreme download manager
# https://subhra74.github.io/xdm/


# visual paradimg
# https://www.visual-paradigm.com/download/community.jsp?platform=linux&arch=64bit


# c++ compiler and python
sudo apt-get install build-essential
sudo apt-get install python3-dev

sudo apt-get install python3


# pip
sudo apt install python3-pip
pip3 install --upgrade pip


# git
sudo apt install git-all
# add the configuration from the first initial use


# ipython
pip install ipython


# vs code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code # or code-insiders

# or vs code from snapcraft
sudo snap install --classic code # or code-insiders


# postgresql
# It is already addit in ubuntu dist
sudo cat  /etc/apt/sources.list.d/pgdg.list
# add the next line 'deb htt...' into that file aboce, save & close

# add this unique line inside of that new file (xenial or the actual distro)
deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update

apt-get install postgresql-12

sudo -u postgres psql postgres
sudo -u postgres psql db


# aws
sudo apt-get install python3-pip
pip3 install awscli --upgrade --user
sudo apt install awscli
# Put the folders .aws .ssh with the correct credentials 
# at the home folder from the user


# Text font (fira code)
sudo apt install fonts-firacode

# or
https://github.com/tonsky/FiraCode/wiki/Linux-instructions#manual-installation
# and 
https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions


# node js
# Using Ubuntu
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs


# postman
https://www.postman.com/downloads/


# off-topic
# How to close all the programs usiong the port 7000
> lsof -ti tcp:7000 | xargs kill -9


# vim
> sudo apt-get install ncurses-dev
# https://www.vim.org/download.php

> git clone https://github.com/vim/vim.git
> cd vim/src
> make
> sudo make install

# Files for vim
> /home/$user/vim/src
#Vundle
https://github.com/VundleVim/Vundle.vim

# Paper color
https://github.com/NLKNguyen/papercolor-theme

> vim
> :e $HOME/.vimrc


# colors on terrminal
> https://github.com/NLKNguyen/papercolor-theme


# docker
> https://docs.docker.com/get-started/
sudo apt install docker.io


# flameshot
sudo apt install flameshot


# proton vpn
sudo apt install -y openvpn dialog python3-pip python3-setuptools
sudo pip3 install protonvpn-cli
# then visit the official website to follow more instructions
# or resolve problems, if someone appear


# nginx
sudo apt install nginx

# uncomplicated firewall
sudo ufw allow 'Nginx HTTP'
sudo ufw status
sudo ufw app list
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'
curl -4 icanhazip.com
sudo apt install php-fpm

# apache
# stop | start apache
sudo service apache2 stop | start

# apache
# php-fpm, which stands for “PHP fastCGI process manager”, and 
# tell Nginx to pass PHP requests to this software for processing
sudo apt install php-fpm
