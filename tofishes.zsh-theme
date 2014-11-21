# Based on nebirhos' theme, with host and rvm indicators. Example:
# @host ➜ pwd_dir rvm:(rubyversion@gemset) git:branchname

# Get the current ruby version in use with RVM:
if [ -e ~/.rvm/bin/rvm-prompt ]; then
    RUBY_PROMPT_="%{$fg_bold[blue]%}rvm:(%{$fg[green]%}\$(~/.rvm/bin/rvm-prompt s i v g)%{$fg_bold[blue]%})%{$reset_color%} "
else
  if which rbenv &> /dev/null; then
    RUBY_PROMPT_="%{$fg_bold[blue]%}rbenv:(%{$fg[green]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$fg_bold[blue]%})%{$reset_color%} "
  fi
fi

# Get the host name (first 4 chars)
# HOST_PROMPT_="%{$fg_bold[red]%}@$HOST[0,4] ➜  %{$fg_bold[cyan]%}%c "
# HOST_PROMPT_="%{$fg_bold[red]%}@ToFishes.Air-%{$fg_bold[green]%}%T %w ➜  %{$fg_bold[cyan]%}$(pwd) "
# color: 紫色 magenta 亮蓝色 cyan
HOST_PROMPT_="
%{$fg_bold[red]%}@ToFishes.Air-%{$fg_bold[green]%}%T ➜  %{$fg_bold[blue]%}${PWD/#$HOME/~} "
GIT_PROMPT="%{$fg_bold[blue]%}\$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}"
PROMPT="$HOST_PROMPT_$RUBY_PROMPT_$GIT_PROMPT"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[red]%}⭠ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
