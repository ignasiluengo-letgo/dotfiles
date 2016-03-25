ulimit -n 65536
ulimit -u 2048

set fish_path $HOME/.oh-my-fish
set fish_greeting ":)"
set fish_theme robbyrussell

# Autojump
if test -f $HOME/.autojump/share/autojump/autojump.fish; . $HOME/.autojump/share/autojump/autojump.fish; end

# Percol
function fish_user_key_bindings
    bind \cr percol_select_history
end

# Plugins
set fish_plugins autojump percol

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Exports
. $HOME/.dotfiles/fish/exports.fish

# Aliases
. $HOME/.dotfiles/fish/globals.fish
. $HOME/.dotfiles/fish/aliases.fish
. $HOME/.dotfiles/fish/private-aliases.fish
