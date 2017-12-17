#!/usr/bin/env bash

# The output of all these installation steps is noisy. With this utility
# the progress report is nice and concise.
function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo "Running apt-get update"
apt-get -y update >/dev/null 2>&1

install 'Development tools' build-essential

install Git git
install Vim vim

install PostgreSQL postgresql postgresql-contrib libpq-dev
sudo -u postgres createuser --superuser root
sudo -u postgres createuser --superuser ubuntu

echo "Downloading Go"
curl --silent https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz > /tmp/go.tar.gz
echo "Extracting Go"
tar -xvzf /tmp/go.tar.gz --directory /home/ubuntu >/dev/null 2>&1
echo "Setting Go environment variables"
mkdir /home/ubuntu/gopath
chmod -R 777 /home/ubuntu/gopath
echo 'export GOROOT="/home/ubuntu/go"' >> /home/ubuntu/.bashrc
echo 'export GOPATH="/home/ubuntu/gopath"' >> /home/ubuntu/.bashrc
echo 'export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"' >> /home/ubuntu/.bashrc

sudo update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8

echo 'All done!'