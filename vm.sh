#!/bin/bash

cd ~
apt update
apt install git nano htop -y
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt-get install gcc g++ make -y
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update -y && apt-get install yarn -y
apt-get install -y nodejs
apt install build-essential -y

node -v
npm -v
echo "CORONELMAKER: instalando yarn e pm2"
npm --force install -g yarn pm2
