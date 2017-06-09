set DOTFILES_PATH $HOME/.dotfiles

# Percol in ctr + r
function fish_user_key_bindings
  bind \cr percol_select_history
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# Exports
. $DOTFILES_PATH/fish/exports/exports.fish
. $DOTFILES_PATH/fish/exports/globals.fish

# Aliases
. $DOTFILES_PATH/fish/aliases.fish
