#!/usr/bin/env bash

sudo apt install man p7zip-full zip unzip -y
sudo apt-get install linux-image-extra-$(uname -r)

wget https://github.com/jwoos/configurations/archive/master.zip
unzip master.zip

# add another interface
sudo bash -c "echo -e 'auto enp0s8\niface enp0s8 inet dhcp' >> /etc/network/interfaces"

# add host
# sudo bash -c "echo -e '\n' >> /etc/hosts"

# install zsh
sudo apt install zsh -y

# install oh-my-zsh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# generate ssh key
echo 'Enter your email:'
read email
ssh-keygen -t rsa -b 4096 -C "${email}"

echo 'Your public ssh key:'
cat ~/.ssh/id_rsa.pub
echo ''

# generate gpg key
gpg --gen-key

gpg --list-secret-keys --keyid-format LONG

echo 'Enter the id of the gpg you would like to use:'
read gpg-id

echo 'Your public gpg key:'
gpg --armor --export ${gpg-id}
echo ''

# install python and related dev tools
sudo apt install python python3 python-dev python3-dev python-setuptools python3-setuptools python-pip python3-pip -y

# install rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /home/junwoo/.rvm/scripts/rvm

# install ruby and set it as default
rvm install 2.3.1
rvm use 2.3.1 --default

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.3/install.sh | bash
source ~/.zshrc
nvm install v6.3.1
nvm install v4.4.7
nvm install iojs-v3.3.1

nvm alias default v6.3.1
nvm use v6.3.1

# upgrade pip
pip install --upgrade pip
pip3 install --upgrade pip

# install neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim -y
pip install neovim
pip3 install neovim
gem install neovim

# install g++
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt install gcc-6 g++-6 gdb -y

# install docker
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo bash -c "echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' >> /etc/apt/sources.list.d/docker.list"
sudo apt update
sudo apt install docker-engine -y

# install docker compose
sudo bash -c "curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose

# install google chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo bash -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable -y
