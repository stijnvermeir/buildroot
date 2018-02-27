#!/bin/bash

# Script to set up development environment
# Should be run on Ubuntu 16.04.3

# These commands are basically the shortened version of what can be found here:
# https://docs.docker.com/install/linux/docker-ce/ubuntu/
# https://docs.docker.com/compose/install/

# docker
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get -qy install docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.19.0/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

# misc
mkdir -p ~/buildroot-download
# picocom
sudo apt-get install picocom 
sudo usermod -aG dialout $USER
# tftp and nfs
sudo apt-get install tftpd-hpa nfs-kernel-server
sudo mkdir -p ~/rootfs
echo "$HOME/rootfs 192.168.1.221(rw,no_root_squash,no_subtree_check)" | sudo tee -a /etc/exports

echo "Log off and in now."
echo "Run 'docker run hello-world' to test docker."
echo "Run 'docker-compose --version' to test docker-compose."

