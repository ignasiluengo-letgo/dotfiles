export ZSH=$HOME/.oh-my-zsh
export DOTFILES_PATH=$HOME/.dotfiles

ZSH_CUSTOM=${DOTFILES_PATH}/zsh
ZSH_THEME="rafa"

ENABLE_CORRECTION="false"
CASE_SENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"

# Fuzzy Autocompletion
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:approximate:*' max-errors 3 numeric
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # match upper from lower case

plugins=(autojump zsh-completions zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH_CUSTOM/aliases/_aliases.sh
source $ZSH_CUSTOM/exports/exports.sh
source $ZSH_CUSTOM/exports/globals.sh
source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/init.sh
