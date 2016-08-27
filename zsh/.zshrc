export ZSH=$HOME/.oh-my-zsh
export DOTFILES_PATH=$HOME/.dotfiles

ZSH_CUSTOM=${DOTFILES_PATH}/zsh
ZSH_THEME="rafa"

ENABLE_CORRECTION="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git autojump zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH_CUSTOM/aliases/_aliases.sh
source $ZSH_CUSTOM/exports/exports.sh
source $ZSH_CUSTOM/exports/globals.sh
source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/etc/percol_select_history.sh
