#PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
PROMPT='%(!.%{%F{yellow}%}.)%{$fg[yellow]%}<$USER@%m> %{$fg_bold[red]%}➜%{$fg_bold[green]%}%p %{$fg[cyan]%}%c%{$fg_bold[blue]%}$(git_prompt_info) %{$fg_bold[blue]%}%{$reset_color%}'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
