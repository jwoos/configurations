ZSH='zprezto'

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# source Kitty
if [[ -n "$KITTY_INSTALLATION_DIR" ]]; then
        export KITTY_INSTALLATION_DIR="${HOME}/main/other/kitty"
fi
if [[ -n "KITTY_SHELL_INTEGRATION" ]] && [[ -d "$KITTY_INSTALLATION_DIR" ]]; then
        export KITTY_SHELL_INTEGRATION="no-cursor"
        autoload -Uz -- "$KITTY_INSTALLATION_DIR/shell-integration/zsh/kitty-integration"
        kitty-integration
        unfunction kitty-integration
else
        echo "Could not find Kitty integration at ${KITTY_INSTALLATION_DIR} - skipping"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


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

# ctl-k, ctl-a, ctl-e, ctl-w should be defined already

# delete from cursor to front of line
bindkey \^U backward-kill-line

# delete forward
bindkey \^D forward-kill

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
	/opt/homebrew/opt/llvm/bin
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

# fzf integration
source <(fzf --zsh)
