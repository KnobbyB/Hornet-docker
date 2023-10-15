#!/bin/bash
sudo apt update && sudo apt upgrade -y
echo insecure >> $HOME/.curlrc      //this disables the curl issue Https
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce -y
sudo apt update
wget https://github.com/iotaledger/node-docker-setup/archive/refs/tags/v1.0.2.tar.gz
tar -zxf v1.0.2.tar.gz
rm v1.0.2.tar.gz
