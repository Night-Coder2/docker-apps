#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
curl -sSL https://get.docker.com | sh
sudo apt-get install libffi-dev libssl-dev -y
sudo apt install python3-dev -y
sudo apt-get install python3 python3-pip -y
sudo pip3 install docker-compose
myname=$(whoami)
sudo usermod -aG docker $myname
sudo docker network create -d macvlan --subnet 192.168.0.0/24 --gateway 192.168.0.1 --ip-range 192.168.0.253/32 -o parent=eth0 macvlan
./install_portainer.sh
sudo reboot
