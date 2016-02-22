#!/usr/bin/env zsh

GREEN='\033[0;32m'
NC='\033[0m'

basepath='~/.vim/bundle/'
cd $basepath

plugins=($(ls))

for plugin in $plugins; do
	cd $plugin
	echo "${GREEN} ${plugin} ${NC}"
	echo "updating ${plugin}"
	# updated the package itself
	git pull origin master
	# update submodules
	git submodule update --remote --recursive
	cd ..
	echo ""
done

# TODO automatically add keying in ssh key
