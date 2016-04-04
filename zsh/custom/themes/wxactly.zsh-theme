PROMPT='$(wxactly_vi_mode_prompt_info)%{$fg[cyan]%}%c%{$reset_color%}$(git_prompt_info) '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

MODE_INDICATOR="%{$fg_bold[red]%}<<%{$reset_color%}"

function wxactly_vi_mode_prompt_info() {
  if [ "$KEYMAP" = "vicmd" ]
  then
    echo "%{$fg_bold[red]%}>>%{$reset_color%}"
  else
    echo "%{$fg_bold[red]%}→ %{$reset_color%}"
  fi
}

