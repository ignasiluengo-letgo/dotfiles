ulimit -n 65536
ulimit -u 2048

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Intro message
set fish_greeting "A por todas, Rafa!"

# Theme
set fish_theme robbyrussell

# Autojump
if test -f /Users/rafael.antonio/.autojump/share/autojump/autojump.fish; . /Users/rafael.antonio/.autojump/share/autojump/autojump.fish; end

# Percol
function fish_user_key_bindings
    bind \cr percol_select_history
end

# Plugins
set fish_plugins autojump percol

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Exports
. $HOME/.dotfiles/utils/exports.sh

# Aliases
. $HOME/.dotfiles/fish/globals.fish
. $HOME/.dotfiles/fish/aliases.fish
. $HOME/.dotfiles/fish/private-aliases.fish
