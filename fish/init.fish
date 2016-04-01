# Autojump
. $HOME/.autojump/share/autojump/autojump.fish;

# Percol in ctr + r
function fish_user_key_bindings
    bind \cr percol_select_history
end

# Exports
. $HOME/.dotfiles/fish/exports.fish

# Aliases
. $HOME/.dotfiles/fish/globals.fish
. $HOME/.dotfiles/fish/aliases.fish
. $HOME/.dotfiles/fish/private-aliases.fish
