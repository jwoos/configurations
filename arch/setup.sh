sudo pacman -Sy curl wget vim nano less zsh git perl make linux-headers expac python2 python ruby gcc clang python-pip python2-pip stow

wget https://aur.archlinux.org/cgit/aur.git/snapshot/cower.tar.gz
tar xzvf cower.tar.gz
pushd cower
makepkg -s
makepkg -i
popd
rm cower -rf

wget https://aur.archlinux.org/cgit/aur.git/snapshot/pacaur.tar.gz
tar xzvf pacaur.tar.gz
pushd pacaur
makepkg -s
makepkg -i
popd
rm pacaur -rf

pacaur -Sy neovim-git

sudo pip3 install neovim
sudo pip2 install neovim
gem install neovim

chsh -s /usr/bin/zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install v6.10.2

mkdir -p ${HOME}/.config/
make
