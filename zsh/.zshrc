ZSH='zprezto'

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export TERM=xterm-256color

export SAVEHIST=50000

export NVM_DIR="${HOME}/.nvm"
[ -s "${NVM_DIR}/nvm.sh" ] && . "${NVM_DIR}/nvm.sh" # This loads nvm

export GOPATH="${HOME}/.go"

export PATH="${PATH}:${HOME}/.gem/ruby/2.4.0/bin"

export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='nvim -M'

export FZF_DEFAULT_COMMAND='fd --type f'
# export FZF_DEFAULT_OPTS=''

# set vim mode
# bindkey -v

# reduce key timeout for mode switching
export KEYTIMEOUT=1

alias python=python3
alias pip=pip3

alias tmux='tmux -2'
alias vim='nvim'
alias vimdiff='nvim -d'

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
  /usr/local/{bin,sbin}
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
