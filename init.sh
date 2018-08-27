#!/bin/bash
set -e
set -x

sudo apt update

cd ~
sudo apt -y install git zsh nginx tmux curl wget python3 vim cmake build-essential python3-distutils
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3 get-pip.py
sudo pip install requests ipython flask six
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/n0b0dyCN/n0vim.git
cd n0vim
bash install-n0vim.sh
cd ~

curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker `whoami`
cd ~
rm get*
rm -rf n0vim
mkdir workspace
mkdir tools
mkdir ctf

