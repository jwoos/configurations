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
