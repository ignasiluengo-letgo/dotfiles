export DOTFILES_PATH=$HOME/.dotfiles
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
source ${ZIM_HOME}/init.zsh

# Overwrite zim non extensible configuration

# Removing the waiting dots from completion (...). Original: ~/.zim/modules/input/init.zsh
expand-or-complete-with-redisplay() {
  zle expand-or-complete
  zle redisplay
}

# Fuzzy Autocompletion
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:approximate:*' max-errors 3 numeric
zstyle ':completion:*' matcher-list 'm:{a-z}={  A-Z}' # match upper from lower case

source $DOTFILES_PATH/console/init.sh

fpath=(/${ZDOTDIR:-${DOTFILES_PATH}}/console/zsh/themes $fpath)

autoload -Uz promptinit && promptinit
prompt rafa

source $DOTFILES_PATH/console/zsh/key-bindings.zsh

# GOLANG configuration

export GOPATH=$HOME/demo/go-workspace
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
