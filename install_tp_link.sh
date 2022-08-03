# REF: https://askubuntu.com/questions/1047832/tp-link-tl-wn725n-driver-for-18-04-version

sudo apt-get update
sudo apt-get install -y linux-headers-$(uname -r) build-essential git
git clone https://github.com/lwfinger/rtl8188eu
cd rtl8188eu
make all
sudo make install
sudo insmod 8188eu.ko

echo "END INSTALLATION"
