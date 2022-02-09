export ZSH="$HOME/projects/dotfiles/zsh"
export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
export GRAPHVIZ_DOT="/usr/local/bin/dot" # PlantUML

# from https://medium.com/@dannysmith/little-thing-2-speeding-up-zsh-f1860390f92
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

# set command line editing mode to vi
set -o vi

# enable reverse search
bindkey '^R' history-incremental-search-backward

source $ZSH/prompt.zsh
source $ZSH/aliases.zsh
source $ZSH/aliases.zsh