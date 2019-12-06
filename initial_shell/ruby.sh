#!/bin/sh
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.6.5
rbenv rehash
rbenv global 2.6.5
gem install neovim

