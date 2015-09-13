#!/bin/bash

clear
echo "welcome, $USER to the start up script"

echo "your sudo settings"

echo "we will now add recommended repositories"
sleep 5

#add-apt-repository ppa:nilarimogard/webupd8
#add-apt-repository ppa:nilarimogard/webupd8
#add-apt-repository ppa:webupd8team/y-ppa-manager
#add-apt-repository ppa:ubuntu-wine/ppa

#sudo -E wget --output-document=/etc/apt/sources.list.d/medibuntu.list http://www.medibuntu.org/sources.list.d/$(lsb_release -cs).list && sudo apt-get --quiet update && sudo apt-get --yes --quiet --allow-unauthenticated install medibuntu-keyring && sudo apt-get --quiet update

echo "We will now update and upgrade your packages"
sleep 5
apt-get update
apt-get upgrade

echo "We will now make recommended installs"
sleep 5
apt-get -y install -f

apt-get -y install wget
apt-get -y install curl
apt-get -y install synaptic
#apt-get --assume-yes install y-ppa-manager

cd ~/Downloads && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf - dropbox.deb 
~/Downloads/.dropbox-dist/dropboxd
apt-get -y install kate

apt-get -y install  chromium-browser


#install pycharm
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu trusty-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
sudo apt-get update
sudo apt-get install pycharm

#install oracle Java
sudo apt-get purge openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer








apt-get -y install zlib1g-dev 
apt-get -y install python-setuptools
apt-get -y install build-essential
apt-get -y install libssl-dev
apt-get -y install libxml2-dev
apt-get -y install openssl
apt-get -y install libxslt1-dev
apt-get -y install python-dev
apt-get -y install libzmq-dev
apt-get -y install libpq-dev
apt-get -y install iptables
apt-get -y install tree
apt-get -y install pylint
apt-get -y install openjdk-7-jdk
apt-get -y install virtualenvwrapper
apt-get -y install apache2
apt-get -y install python-pip



#apt-get -y install -f
#apt-get -y update 
#apt-get -y upgrade 

echo " ALL DONE :) "

#reboot



