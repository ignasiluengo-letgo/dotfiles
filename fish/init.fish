set DOTFILES_PATH $HOME/.dotfiles

# Autojump
. /usr/local/Cellar/autojump/22.5.0/share/autojump/autojump.fish

# Percol in ctr + r
function fish_user_key_bindings
  bind \cr percol_select_history
end

# Exports
. $DOTFILES_PATH/fish/exports/exports.fish
. $DOTFILES_PATH/fish/exports/globals.fish

# Aliases
. $DOTFILES_PATH/fish/aliases.fish
