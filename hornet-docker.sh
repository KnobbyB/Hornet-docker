#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y
sudo apt update
sudo apt install docker-compose-plugin
mkdir hornet
cd hornet
curl -L -O https://github.com/iotaledger/node-docker-setup/releases/download/v1.0.0-rc.8/node-docker-setup_chrysalis-v1.0.0-rc.8.tar.gz
tar -zxf node-docker-setup_chrysalis-v1.0.0-rc.8.tar.gz
sudo rm node-docker-setup_chrysalis-v1.0.0-rc.8.tar.gz
