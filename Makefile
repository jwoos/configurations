XDG = ${HOME}/.config
STOW_FLAGS = --dir=./

default: zsh neovim i3 neofetch

zsh: FORCE
	stow ${STOW_FLAGS} --target=${HOME} $@

clean-zsh: FORCE
	stow ${STOW_FLAGS} --target=${HOME} -D zsh

git: FORCE
	stow ${STOW_FLAGS} --target=${HOME} $@

clean-git: FORCE
	stow ${STOW_FLAGS} --target=${HOME} -D git

neovim: FORCE
	stow ${STOW_FLAGS} --target=${XDG}/nvim/ $@

i3: FORCE
	stow ${STOW_FLAGS} --target=${XDG}/i3/ $@

clean-i3: FORCE
	stow ${STOW_FLAGS} --target ${XDG}/i3/ $@

neofetch: FORCE
	stow --dir=./ --target=${XDG}/neofetch/ $@

clean-neofetch: FORCE
	stow --dir=./ --target=${XDG}/neofetch/ -D neofetch

FORCE:
