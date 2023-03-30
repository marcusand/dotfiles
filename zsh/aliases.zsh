alias showhiddenfiles="defaults write com.apple.finder AppleShowAllFiles YES" # requires Finder relaunch
alias hidehiddenfiles="defaults write com.apple.finder AppleShowAllFiles NO" # requires Finder relaunch
alias ports="lsof -i -n -P | grep TCP"
alias ls="ls -l"

alias projects="cd ~/projects"
alias privat="cd ~/projects/privat"
alias tools="cd ~/projects/tools"
alias meso="cd ~/projects/arbeit/meso"
alias onoff="cd ~/projects/arbeit/onoff"
alias dot="cd ~/projects/dotfiles"
alias docs="cd ~/Documents"
alias know="cd ~/projects/privat/knowledge"

alias broker="/Applications/hivemq-4.3.1/bin/run.sh"
alias wine="wine64"
alias bfg="java -jar ~/projekte/tools/bfg-repo-cleaner/bfg-1.13.2.jar"
alias vim="nvim"

alias lang="npm run generate:language"
alias types="npm run generate:server-types"
alias tests="npm run test -- --watch"
