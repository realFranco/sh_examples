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
#
# Check os version
# cat /etc/os-release


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
# ref https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup
git config --global user.name "name"
git config --global user.email johndoe@example.com


# ipython
pip3 install ipython
# or
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
sudo nano  /etc/apt/sources.list.d/pgdg.list
# add the next line 'deb htt...' into that file above, save & close

# add this unique line inside of that new file (xenial or the actual distro)
deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main
# change 'xenial' for 'bionic' in case that your are on ubuntu 18.04

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Wait for the 'OK' message

sudo apt-get update

sudo apt-get install postgresql-12

# In case of install psycopg (python <-> pg) driver
sudo apt install libpq-dev

# for create user 
# https://www.postgresql.org/docs/current/sql-createuser.html
#
sudo -u postgres psql postgres
sudo -u postgres psql db
#
# create user 
# CREATE USER user_name WITH CREATEDB PASSWORD 'password';
# to connect 
psql -d postgres -U user_name -h localhost
or 
# in the same of session of the postgres cli
\c postgres user_name

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


# yarn
https://classic.yarnpkg.com/en/docs/install/#debian-stable

# postman
https://www.postman.com/downloads/
# Add it into a Short cut:
#
# Add create a new shortcut
# Shortcut Ctrl + P
# Run: ./app/Postman
#
# Before add the shortcut, make sure the command work


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
# https://github.com/NLKNguyen/papercolor-theme


# docker
# https://docs.docker.com/get-started/
#
sudo apt install docker.io
sudo apt install docker-compose


# flameshot
sudo apt install flameshot
# or using snapcraft
sudo snap install flameshot

# To set flamshot GUI into a Print keyboard shortcut:

# Open the bash and execute the next command
# To disable the current print activity
> gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot '[]'

# Then Go to Settings -> Keyboard and Shortcuts -> Drive to the bottom of the window
# Create a new Shortcut, the command of the shorcut will be 
> flamshot gui 

# At the end set the key of the keyboard to "execute" that command, in this
# case is the keyboard "Print".


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


# installing a tp-link wireless usb driver

# Ref:
# > https://askubuntu.com/questions/1047832/tp-link-tl-wn725n-driver-for-18-04-version

cat /proc/version
# Linux version 5.4.0-42-generic (buildd@lgw01-amd64-038) 
# (gcc version 9.3.0 (Ubuntu 9.3.0-10ubuntu2)) 
# #46-Ubuntu SMP Fri Jul 10 00:24:02 UTC 2020

sudo apt-get update
sudo apt-get install -y linux-headers-$(uname -r) build-essential git
git clone https://github.com/lwfinger/rtl8188eu
# git clone https://github.com/realFranco/rtl8188eu
cd rtl8188eu
# Copy the content from rtl8188... into rtl2 to avoid the download process 
# cd rtl2/
make all
sudo make install
sudo insmod 8188eu.ko
# sudo make install && sudo insmod 8188eu.ko

# To reinstall the wifi drivers, follow the next steps
# instance a bash inside of the parent folder
rm -r -f rtl8188eu
mkdir rtl8188eu
cd rtl8188eu_copy
cp -r . ../rtl8188eu
cd ../rtl8188eu
make all
sudo make install
sudo insmod 8188eu.ko

# Check if the driver is installed
lsmod | grep 8188

# I have the mother board jack port f**ck up.
# So I am using SounWire to pass the audio from my pc thorugh my Android phone.
# I have to install some stuff before run SounWire on Ubuntu

# REF: https://www.linux.com/topic/desktop/how-stream-audio-your-linux-pc-android/
> sudo apt-get install libportaudio2

# Downloading SoundWire
# Go to http://georgielabs.net
# Download the correct software for the current OS (Linux x64 for my case).
# On linux, decompress the folder
# Access to the recent folder decompressed
./SoundWireServer

# If some error appears, enable the ports 59010 & 59011 as UDP
> sudo ufw status verbose
> sudo ufw allow 59010/udp
> sudo ufw allow 59011/udp

# Ig not sound detected go to
# Ref: https://unix.stackexchange.com/questions/172066/soundwire-streaming-but-no-sound

# Follow this url to find a more easy steps to make it works
# REF: http://electronics4ubeginners.blogspot.com/2019/02/blog-post.html

# Install Golang
# REF: https://go.dev/doc/install
