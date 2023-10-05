#!/bin/bash
sudo apt update && sudo apt upgrade -y
echo insecure >> $HOME/.curlrc      //this disables the curl issue Https
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce -y
sudo apt update
mkdir hornet
cd hornet
curl -L -O https://github.com/iotaledger/node-docker-setup/releases/download/v1.0.1/node-docker-setup_stardust-v1.0.1.tar.gz
tar -zxf node-docker-setup_stardust-v1.0.1.tar.gz
sudo rm node-docker-setup_stardust-v1.0.1.tar.gz
