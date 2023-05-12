ZSH='zprezto'

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"

export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

export TERM=xterm-256color

export SAVEHIST=100000

export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

export FZF_DEFAULT_COMMAND='fd --type f'
# export FZF_DEFAULT_OPTS=''

export NNN_USE_EDITOR=nvim
export NNN_DE_FILE_MANAGER=pcmanfm
export NNN_NOWAIT=true

# set vim mode
# bindkey -v

# reduce key timeout for mode switching
export KEYTIMEOUT=1

alias python=python3
alias pip=pip3

alias tmux='tmux -2'
alias vim='nvim'
alias vimdiff='nvim -d'
alias n='nnn'

# clobber files during redirection
setopt clobber

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

fpath=(
	~/.zsh/completion/
	$fpath
)

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  /opt/homebrew/opt/coreutils/libexec/gnubin
  /opt/homebrew/bin
  /usr/local/{bin,sbin}
  ~/bin
  ~/.cargo/bin
  $path
)

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/${LOGNAME}"
  mkdir -p -m 700 "${TMPDIR}"
fi

TMPPREFIX="${TMPDIR%/}/zsh"
