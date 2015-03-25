# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Autojump
if test -f /Users/rafael.antonio/.autojump/etc/profile.d/autojump.fish; . /Users/rafael.antonio/.autojump/etc/profile.d/autojump.fish; end

# Percol
function fish_user_key_bindings
    bind \cr percol_select_history
end

# Plugins
set fish_plugins autojump percol

# Custom path
#set fish_custom $HOME/.dotfiles/fish/custom

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Aliases
. $HOME/.dotfiles/utils/aliases.sh
# Exports
# . $HOME/.dotfiles/utils/exports.sh
