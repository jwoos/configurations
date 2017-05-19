XDG = ${HOME}/.config
STOW_FLAGS = --dir=./

default: alacritty compton cygwin git google-chrome i3 mintty neofetch neovim nitrogen polybar rofi terminator termite tmux zsh

zsh: .PHONY
	stow ${STOW_FLAGS} --target=${HOME} $@

clean-zsh: .PHONY
	stow ${STOW_FLAGS} --target=${HOME} -D zsh

git: .PHONY
	stow ${STOW_FLAGS} --target=${HOME} $@

clean-git: .PHONY
	stow ${STOW_FLAGS} --target=${HOME} -D git

neovim: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/nvim/ $@

i3: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/i3/ $@

clean-i3: .PHONY
	stow ${STOW_FLAGS} --target ${XDG}/i3/ i3

neofetch: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/neofetch/ $@

tmux: .PHONY
	stow ${STOW_FLAGS} --target=${HOME} $@

clean-tmux: .PHONY
	stow ${STOW_FLAGS} --target=${HOME} -D tmux

clean-neofetch: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/neofetch/ -D neofetch

alacritty: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/alacritty/ $@

clean-alacritty: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/alacritty/ -D alacritty

compton: .PHONY
	stow ${STOW_FLAGS} --target=${XDG} $@

clean-compton: .PHONY
	stow ${STOW_FLAGS} --target=${XDG} -D compton

google-chrome: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/google-chrome-beta/ $@

clean-google-chrome: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/google-chrome-beta/ -D google-chrome

neofetch: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/neofetch/ $@

clean-neofetch: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/neofetch/ -D neofetch

nitrogen: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/nitrogen/ $@

clean-nitrogen: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/nitrogen/ -D nitrogen

polybar: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/polybar/ $@

clean-polybar: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/polybar/ -D polybar

rofi: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/rofi/ $@

clean-rofi: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/rofi/ -D rofi

terminator: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/terminator/ $@

clean-terminator: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/terminator/ -D terminator

termite: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/termite/ $@

clean-termite: .PHONY
	stow ${STOW_FLAGS} --target=${XDG}/termite/ -D termite

.PHONY:
