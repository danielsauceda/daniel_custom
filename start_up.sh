#!/bin/bash






clear
echo "welcome, $USER to the start up script"

echo "your sudo settings"

echo "we will now add recommended repositories"
sleep 5
sudo add-apt-repository -y  ppa:nilarimogard/webupd8
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo apt-add-repository -y ppa:xorg-edgers/ppa
sudo apt-add-repository -y ppa:ubuntu-x-swat/x-updates
sudo apt-get update
sudo apt-get -y install nvidia-current nvidia-settings


sudo -E wget --output-document=/etc/apt/sources.list.d/medibuntu.list http://www.medibuntu.org/sources.list.d/$(lsb_release -cs).list && sudo apt-get --quiet update && sudo apt-get --yes --quiet --allow-unauthenticated install medibuntu-keyring && sudo apt-get --quiet update


echo "We will now update and upgrade your packages"
sleep 5
sudo apt-get update
sudo apt-get -y upgrade

echo "We will now make recommended installs"
sleep 5
apt-get -y install -f

sudo apt-get -y install wget
sudo apt-get -y install curl
sudo apt-get -y install synaptic
sudo apt-get --assume-yes install y-ppa-manager
sudo apt-get -y android-tools-adb


#install oracle Java
sudo apt-get purge openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java8-installer



sudo apt-get install synaptic vlc gimp gimp-data gimp-plugin-registry gimp-data-extras y-ppa-manager bleachbit openjdk-7-jre oracle-java8-installer flashplugin-installer unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj 

sudo apt-get -y install gnutls-bin
sudo apt-get -y install handbrake
sudo apt-get -y install emacs
sudo apt-get -y install git
sudo apt-get -y install guake
sudo apt-get -y install openssh-server
sudo apt-get -y install zlib1g-dev 
sudo apt-get -y install python-setuptools
sudo apt-get -y install build-essential
sudo apt-get -y install libssl-dev
sudo apt-get -y install libxml2-dev
sudo apt-get -y install openssl
sudo apt-get -y install libxslt1-dev
sudo apt-get -y install python-dev
sudo apt-get -y install libzmq-dev
sudo apt-get -y install libpq-dev
sudo apt-get -y install iptables
sudo apt-get -y install tree
sudo apt-get -y install pylint
sudo apt-get -y install openjdk-7-jdk
sudo apt-get -y install virtualenvwrapper
sudo apt-get -y install apache2
sudo apt-get -y install python-pip
sudo apt-get -y install texlive-full
sudo apt-get -y install dos2unix
sudo apt-get -y install libav-tools
sudo apt-get -y install latex-beamer
sudo apt-get -y install impressive
sudo apt-get -y install pixz
sudo apt-get -y install libfreetype6-dev libxft-dev
sudo apt-get -y install powertop
sudo apt-get -y install testdisk
sudo apt-get -y install lvm2
sudo apt-get -y install ntfsprogs
sudo apt-get -y install screen
sudo apt-get -y install htop


sudo apt-get -y install -f
sudo apt-get -y update 
sudo apt-get -y upgrade 

sudo pip install xlrd
sudo pip install multiprocessing
sudo pip install matplotlib





#install no ip client
# cd /usr/local/src/
# sudo wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz
# sudo tar xf noip-duc-linux.tar.gz
# cd noip-2.1.9-1/
# sudo make install




#reboot



