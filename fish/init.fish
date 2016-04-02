# Autojump
. $HOME/.autojump/share/autojump/autojump.fish

# Percol in ctr + r
function fish_user_key_bindings
  bind \cr percol_select_history
end

# Exports
. $HOME/.dotfiles/fish/exports/exports.fish
. $HOME/.dotfiles/fish/exports/globals.fish

# Aliases and some functions
. $HOME/.dotfiles/fish/aliases/_aliases.fish
