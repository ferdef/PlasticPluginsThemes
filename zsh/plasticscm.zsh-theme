PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(plasticscm_prompt_info) '

ZSH_THEME_PLASTICSCM_PROMPT_PREFIX="%{$fg_bold[blue]%}scm:(%{$fg[red]%}"
ZSH_THEME_PLASTICSCM_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_PLASTICSCM_PROMPT_DIRTY="%{$fg[blue]%} ) %{$fg[yellow]%}✗"
ZSH_THEME_PLASTICSCM_PROMPT_CLEAN="%{$fg[blue]%} )"