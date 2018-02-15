export DOTFILES_PATH=$HOME/.dotfiles
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

# Fuzzy Autocompletion
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:approximate:*' max-errors 3 numeric
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # match upper from lower case

source $DOTFILES_PATH/console/init.sh

fpath=(/${ZDOTDIR:-${DOTFILES_PATH}}/console/zsh/themes $fpath)

autoload -Uz promptinit && promptinit
prompt rafa

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
