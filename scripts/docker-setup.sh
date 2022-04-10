#!/bin/bash
curl -sSL https://get.docker.com | sh
sudo apt-get install libffi-dev libssl-dev -y
sudo apt install python3-dev -y
sudo apt-get install -y python3 python3-pip -y
sudo pip3 install docker-compose
