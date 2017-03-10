HOME = ~
XDG = ${HOME}/.config

neovim:
	stow --dir=./ --target=${XDG}/nvim/

i3:
	stow --dir=./ --target=${XDG}/i3/

neofetch:
	stow --dir=./ --target=${XDG}/neofetch/
