export ZSH=$HOME/.oh-my-zsh
export DOTFILES_PATH=$HOME/.dotfiles

ZSH_CUSTOM=${DOTFILES_PATH}/console/zsh
ZSH_THEME="rafa"

ENABLE_CORRECTION="false"
CASE_SENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"

# Fuzzy Autocompletion
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:approximate:*' max-errors 3 numeric
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # match upper from lower case

plugins=(zsh-completions zsh-syntax-highlighting zsh-autosuggestions z)

source $ZSH_CUSTOM/init.sh
source $ZSH/oh-my-zsh.sh

source $DOTFILES_PATH/console/init.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
