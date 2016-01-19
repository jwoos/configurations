#!/usr/bin/env zsh

basepath='~/.vim/bundle/'
cd $basepath

plugins=($(ls))

for plugin in $plugins; do
	cd $plugin
	git pull origin master
	cd ..
done

# TODO automatically add keying in ssh key
