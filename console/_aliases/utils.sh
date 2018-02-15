# Enable aliases to be sudo’ed
alias sudo='sudo '

# Others
alias aux='ps uax'
alias brwe='brew'
alias edithosts='sudo vim /etc/hosts'
alias c='pbcopy'
alias copy='pbcopy'
alias copy_ssh_key='xclip -sel clip < ~/.ssh/id_rsa.pub'
alias count_files_recursive='find . -type f -print | wc -l'
alias emptytrash='sudo empty_trash'
alias find_broken_symlinks='find -L . -type l'
alias fuck!='sudo $history[1]'
alias flat_this_dir="sudo find . -mindepth 2 -type f -exec mv -i '{}' . ';'"
alias j='z'
alias k='kill -9'
alias map="xargs -n1"
alias r='realpath'
alias reveal='open .'
alias size_of_the_current_directory='du -ch | grep total'
alias stt='subl .'
alias watch_number_of_files='watch -n1 "find . -type f -print | wc -l"'
alias code='cd ~/Code'
alias codely='cd ~/Code/codely'
alias dotfiles='cd ~/.dotfiles'
alias t='time'
alias pubkey='cat ~/.ssh/id_rsa.pub | pbcopy'

alias catimg='imgcat'
alias editdotfiles='subl ~/.dotfiles'

alias optimize_zsh='source ${ZDOTDIR:-${HOME}}/.zlogin'

# Utils for presentations. Hide/show all desktop icons.
alias hidedesktop='defaults write com.apple.finder CreateDesktop -bool false; killall Finder'
alias showdesktop='defaults write com.apple.finder CreateDesktop -bool true; killall Finder'

# Mac
alias wall='change_wallpaper'
alias out='outdated_apps'
alias up='update_apps'
