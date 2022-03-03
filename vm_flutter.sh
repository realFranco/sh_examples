# Description: Recipe for install Virtual Box Machine & Flutter
# OS System: Ubuntu 20.04
# Distribution: Focal
# Release of this recipe: March 3rd, 2022

# Installing VM Oracle from the Oracle Repositories
# This will grant a most recent instalation from the software
#
# To understand how a shell command works, refer to this page:
# REF: https://explainshell.com/

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | \
    sudo tee -a /etc/apt/sources.list.d/virtualbox.list

sudo apt update

sudo apt install virtualbox-6.1

# If the previous command does not work, use this instead
sudo apt install virtualbox

# Installing Flutter
# REF: https://docs.flutter.dev/get-started/install
# REF: https://docs.flutter.dev/get-started/install/linux#install-flutter-manually

# Copy the tar.gz inside a folder
tar xf flutter_linux_2.10.3-stable.tar.xz

# Copy the route where flutter was installed
pwd

# Update the PATH, to locate the "flutter" command
nano  $HOME/.bashrc

# Insert a new line at the end of the rc document
# PATH_OF_FLUTTER_GIT_DIRECTORY is the output from the "pwd" command
export PATH="$PATH:[PATH_OF_FLUTTER_GIT_DIRECTORY]/bin"
# export PATH="$PATH:/home/diuble-lig/Documents/flutter_release/bin"

# Open a new terminal and execute
echo $PATH

# Make sure that the path the you add in the previous export 
# contains the flutter bin

# Also, verify where is flutter installed
which flutter

# Optionall, run the next command to see if there are any dependencies
# you need to install to complete the setup
flutter doctor

# or -v to expose a verbosed output
flutter -v doctor

