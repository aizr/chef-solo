#!/usr/bin/env bash

# Pre-requisites
sudo apt-get -y update
sudo apt-get --no-install-recommends -y install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev vim

# Download and compile Ruby 2.0.0-p0
cd /tmp
wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p327.tar.gz
tar -xvzf ruby-1.9.3-p327.tar.gz
cd ruby-1.9.3-p327
./configure --prefix=/usr/local
make
make install

sudo gem install chef --no-ri --no-rdoc