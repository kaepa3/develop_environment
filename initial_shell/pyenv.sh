#!/bin/sh
# 事前準備
sudo apt install -y build-essential
sudo apt install -y libffi-dev
sudo apt install -y libssl-dev # openssl
sudo apt install -y zlib1g-dev
sudo apt install -y libbz2-dev libreadline-dev libsqlite3-dev # sqlite3, bz2, readline
pip install --upgrade pip

# pyenv本体のダウンロードとインストール
sudo apt install -y git
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

git clone https://github.com/yyuu/pyenv-virtualenv.git ${PYENV_ROOT}/plugins/pyenv-virtualenv
eval "$(pyenv virtualenv-init - | source)"

pyenv install 2.7.17
pyenv install 3.7.5
sudo apt install python-pip python2-pip python3-pip

#
echo 'config 2.7.17'
pyenv global 2.7.17
pip install --upgrade pip
pyenv virtualenv 2.7.17 neovim2
pyenv shell neovim2
pip install neovim
pip2 install neovim
#
echo 'config 3.7.5'
pyenv global 3.7.5
pip install --upgrade pip
pyenv virtualenv 3.7.5 neovim3
pyenv shell neovim3
pip install neovim
