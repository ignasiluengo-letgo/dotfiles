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
alias fcb='soccer --team=FCB --time=100'
alias fuck!='sudo $history[1]'
alias j='z'
alias k='kill -9'
alias lfp='soccer --standings --league=LLIGA'
alias map="xargs -n1"
alias r='realpath'
alias reveal='open .'
alias size_of_the_current_directory='du -ch | grep total'
alias stt='subl .'
alias watch_number_of_files='watch -n1 "find . -type f -print | wc -l"'
alias code='cd ~/Code'
alias t='time'

alias catimg='imgcat'
alias editdotfiles='subl ~/.dotfiles'

# Utils for presentations. Hide/show all desktop icons.
alias hidedesktop='defaults write com.apple.finder CreateDesktop -bool false; killall Finder'
alias showdesktop='defaults write com.apple.finder CreateDesktop -bool true; killall Finder'

# Mac
alias wall='change_wallpaper'
alias outdated_apps='mas outdated; brew update >/dev/null; brew outdated; brew cask outdated'
alias update_apps='brew update >/dev/null; brew outdated | xargs -n1 brew upgrade; brew cask outdated | xargs -n1 brew cask install --force; mas upgrade'

