#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt install git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
sudo apt install postgresql-contrib libpq-dev ruby-full

gem install rails devise # OR  add devise version to gemfile and do bundle install
gem install bundler

curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

#rbenv install -l TO LIST VERSIONS
#rbenv install [version number]
