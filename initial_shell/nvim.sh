#!/bin/sh
# nvim

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get -y install neovim
sudo apt-get -y install python-neovim
sudo apt-get -y install python3-neovim
# ssh
echo "start ssh"
git clone git@github.com:kaepa3/nvim.git /home/vagrant/.config/nvim
curl https://gist.githubusercontent.com/kaepa3/b249fab0d0b23e99df57d50879339c2b/raw/9656f6620ed829744cd4209fbf49a4c6952d2394/gitconfig >/home/vagrant/.gitconfig

# clop bpard
sudo apt-get install xsel
