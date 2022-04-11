#!/bin/bash
curl -sSL https://get.docker.com | sh
sudo apt-get install libffi-dev libssl-dev -y
sudo apt install python3-dev -y
sudo apt-get install -y python3 python3-pip -y
sudo pip3 install docker-compose
myname=$(whoami)
sudo usermod -aG docker $myname
sudo docker network create -d macvlan --subnet 192.168.0.0/24 --gateway 192.168.0.1 --ip-range 192.168.0.253/32 -o parent=eth0 macvlan
sudo reboot
