ZSH='zprezto'

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export TERM=xterm-256color

export SAVEHIST=50000

export NVM_DIR="/home/junwoo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="$PATH:/usr/local/go/bin" # adds go to path
export GOPATH="$HOME/.go"

export PATH="$PATH:$HOME/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin" # add haskell compiler to path

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

# colorful man pages? yeah.
export LESS_TERMCAP_mb=$'\e'"[1;31m"
export LESS_TERMCAP_md=$'\e'"[1;31m"
export LESS_TERMCAP_me=$'\e'"[0m"
export LESS_TERMCAP_se=$'\e'"[0m"
export LESS_TERMCAP_so=$'\e'"[1;44;33m"
export LESS_TERMCAP_ue=$'\e'"[0m"
export LESS_TERMCAP_us=$'\e'"[1;32m"

# set vim mode
# bindkey -v

# reduce key timeout for mode switching
export KEYTIMEOUT=1

alias python=python3
alias pip=pip3

alias tmux="tmux -2"
alias vim="nvim"
alias g++="g++-6"
alias gcc="gcc-6"

alias ls="ls --color=auto"
alias fuzzy='ls -l $(find -type f | fzy)'

# always show line number
alias less='less -N'

# less with syntax highlighting
alias lesshi='LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s" less '

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

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
  export TMPDIR="/tmp/$LOGNAME"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"
