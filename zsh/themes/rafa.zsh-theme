local ret_status="%(?:%{$fg_bold[green]%}λ:%{$fg_bold[red]%}λ)"

function custom_pwd() {
  if [[ $(pwd) == $HOME ]] ; then
    echo "~"
  else
    echo ${${${:-/${(j:/:)${(M)${(s:/:)${(D)PWD:h}}#(|.)[^.]}}/${PWD:t}}//\/~/\~}/\/\//\/}
  fi
}

PROMPT='${ret_status} %{$fg[yellow]%}$(custom_pwd)%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[white]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%} %{$fg[white]%}✓"

# Highlight plugin custom colors
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[function]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[command]='fg=cyan'
