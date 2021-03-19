#!/bin/bash

sudo swapoff -a  

wget https://raw.githubusercontent.com/docker/docker-install/master/install.sh
chmod a+x install.sh
sh install.sh
echo $(docker -v)

sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
echo $(docker-compose --version)
