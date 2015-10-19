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

# Aliases
. $HOME/.dotfiles/utils/aliases.sh

# Exports
. $HOME/.dotfiles/utils/exports.sh
