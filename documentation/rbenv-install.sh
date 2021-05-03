#!/usr/bin/env bash

# https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-18-04-pt
# https://www.techiediaries.com/install-ruby-2-7-rails-6-ubuntu-20-04/
# https://hibbard.eu/how-to-install-rbenv-on-linux-mint-16/

sudo apt-get install build-essential -y
sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev -y
sudo apt install libncurses5-dev libffi-dev libgdbm5 libgdbm-dev -y
sudo apt install autoconf-archive gnu-standards autoconf-doc libtool g++-multilib g++-7-multilib gcc-7-doc libstdc++6-7-dbg -y
sudo apt install glibc-doc ncurses-doc readline-doc libssl-doc libstdc++-7-doc libyaml-doc -y
sudo apt install ncurses-doc glibc-doc-reference -y 
sudo apt-get install -y libreadline-dev zlib1g-dev
sudo sudo apt autoremove -y
sudo apt install rbenv -y
rbenv init
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
# cd ~/.rbenv && src/configure && make -C src

# echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
# echo 'eval "$(rbenv init -)"' >> ~/.bashrc
# echo 'eval "$(rbenv init -)"' >> ~/.profile
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
# echo 'export PATH="$HOME/.rbenv/shims:$PATH"' >> ~/.bash_profile
# echo 'export PATH="$HOME/.rbenv/shims:$PATH"' >> ~/.bashrc
# echo 'export PATH="$HOME/.rbenv/shims:$PATH"' >> ~/.profile

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
# echo "gem: --no-document" > ~/.gemrc

rbenv install
rbenv rehash
rbenv install 3.1.0-dev
rbenv rehash
rbenv install 3.0.1
rbenv rehash
rbenv global 3.0.1
rbenv rehash
rbenv local 3.0.1
rbenv rehash

gem install bundler
gem env home
gem install bundler
gem install rails

rbenv which irb
rbenv whence rackup

