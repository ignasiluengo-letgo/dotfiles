export ZSH=$HOME/.oh-my-zsh
export DOTFILES_PATH=$HOME/.dotfiles

ZSH_CUSTOM=${DOTFILES_PATH}/console/zsh
ZSH_THEME="rafa"

ENABLE_CORRECTION="false"
CASE_SENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"
DISABLE_AUTO_UPDATE="true"

ZSH_AUTOSUGGEST_STRATEGY="match_prev_cmd"
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=1

# Fuzzy Autocompletion
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:approximate:*' max-errors 3 numeric
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # match upper from lower case

plugins=(zsh-autosuggestions zsh-syntax-highlighting z)

source $ZSH/oh-my-zsh.sh

source $DOTFILES_PATH/console/init.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
