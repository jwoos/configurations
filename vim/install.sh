#!/usr/bin/env zsh

basepath='~/.vim/bundle/'
cd $basepath

gitpath='git@github.com:'
extension='.git'

rm -rf *

plugins=(\
	'tpope/vim-pathogen' \
	'scrooloose/nerdtree' \
	'Xuyuanp/nerdtree-git-plugin' \
	'scrooloose/syntastic' \
	'ap/vim-css-color' \
	'airblade/vim-gitgutter' \
	'bronson/vim-trailing-whitespace' \
	'kchmck/vim-coffee-script' \
	'digitaltoad/vim-jade'
	)

for plugin in $plugins; do
	echo "Installing $plugin..."
	git clone "$gitpath$plugin$extension"
done

echo 'Plugins installed'

# TODO automatically add keying in ssh key
# TODO add cleaning out directory automatically
