autoload colors && colors

color_alpha=131
color_beta=43

# set input color white
zle_highlight=( default:fg=white ) 

# make sure PROMPT is reevalutated after each command
setopt promptsubst

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_info() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo "%F{$color_beta} [$(git_branch)]%{$reset_color%}"
    else
      echo "%F{$color_alpha} [$(git_branch)]%{$reset_color%}"
    fi
  fi
}

need_push () {
  if [ $($git rev-parse --is-inside-work-tree 2>/dev/null) ]
  then
    number=$($git cherry -v origin/$(git symbolic-ref --short HEAD) 2>/dev/null | wc -l | bc)

    if [[ $number == 0 ]]
    then
      echo ""
    else
      echo " $number unpushed%{$reset_color%}"
    fi
  fi
}

export PROMPT="%F{$color_alpha}➜ %F{$color_beta}%c %{$reset_color%}"
export RPROMPT='$(git_info)$(need_push)'
