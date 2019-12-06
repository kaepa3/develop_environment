# 事前準備
sudo apt install -y build-essential
sudo apt install -y libffi-dev
sudo apt install -y libssl-dev # openssl
sudo apt install -y zlib1g-dev
sudo apt install -y libbz2-dev libreadline-dev libsqlite3-dev # sqlite3, bz2, readline
sudo apt install python-pip python3-pip:
pip install --upgrade pip

# pyenv本体のダウンロードとインストール
sudo apt install -y git
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

git clone https://github.com/yyuu/pyenv-virtualenv.git ${PYENV_ROOT}/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
source ~/.bash_profile
# 
pyenv install 2.7.17
pyenv install 3.7.5

pyenv local 3.7.5
#
pyenv virtualenv 2.7.17 neovim2
pyenv shell neovim2
pip install neovim
#
pyenv virtualenv 3.7.5 neovim3
pyenv shell neovim3
pip install neovim
