# RVM settings
if [[ -s ~/.rvm/scripts/rvm ]] ; then 
  RPS1="%{$fg[yellow]%}rvm:%{$reset_color%}%{$fg[red]%}\$(~/.rvm/bin/rvm-prompt)%{$reset_color%} $EPS1"
else
  if which rbenv &> /dev/null; then
    RPS1="%{$fg[yellow]%}rbenv:%{$reset_color%}%{$fg[red]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$reset_color%} $EPS1"
  fi
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# True when the working directory is inside a jj repo
in_jj_repo() {
  command -v jj &> /dev/null && jj root --ignore-working-copy &> /dev/null
}

# Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  # In a jj repo, show the jj bookmark instead of the git branch
  in_jj_repo && return
  local cb=$(git_current_branch)
  if [ -n "$cb" ]; then
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(git_current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX$(parse_git_dirty)"
  fi
}

# Nearest bookmark to the working copy (closest ancestor of @, local or remote)
jj_custom_status() {
  in_jj_repo || return
  local bookmark=$(jj log -r 'latest(::@ & (bookmarks() | remote_bookmarks()))' --no-graph --color never --ignore-working-copy -T 'if(local_bookmarks, local_bookmarks.map(|b| b.name()).join(","), remote_bookmarks.map(|b| b.name()).join(","))' 2> /dev/null)
  if [ -n "$bookmark" ]; then
    local dirty=$(jj log -r '@' --no-graph --color never -T 'if(empty, "", "*")' 2> /dev/null)
    echo "%{$fg[green]%}[$bookmark]%{$reset_color%}%{$fg[red]%}$dirty%{$reset_color%}"
  fi
}

PROMPT='%{$fg[cyan]%}[%~% ]$(git_custom_status)$(jj_custom_status)%{$reset_color%}%B$%b '
