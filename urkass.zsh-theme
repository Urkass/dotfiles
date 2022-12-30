# This theme requires git 2.2.0 to use git branch --show-current

PROMPT='%(!.%{$fg[red]%}.%{$fg_bold[blue]%})%~%{$reset_color%}  %{$fg[green]%}$(git_branch_name)%{$reset_color%}
% %{$fg[white]%}▶%{$resetcolor%} '

function git_branch_name() {
  branch=$(git branch --show-current 2> /dev/null)
  if [[ $branch == "" ]];
  then
    :
  else
    echo $branch
  fi
}


# LS colors, made with https://geoff.greer.fm/lscolors/
# Copied from avit theme
export LSCOLORS="exfxcxdxbxegedabagacad"
export LS_COLORS='di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'
export GREP_COLOR='1;33'
