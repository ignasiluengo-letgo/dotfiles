# Alias de Alias
alias editaliases="vim ~/.dotfiles/utils/aliases.sh"
alias cataliases="cat ~/.dotfiles/utils/aliases.sh"
alias reloadaliases="source ~/.dotfiles/utils/aliases.sh"

# Git
alias gc='git commit'
alias gd='git diff --color'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset %C(yellow)%d%Creset %an: %s - %Creset %Cgreen(%cr, %cd)%Creset" --abbrev-commit --date=iso'
alias gs='git status -sb'
alias gf='git fetch --all -p'

# Front
alias gulp='./node_modules/gulp/bin/gulp.js build'

# Server
alias edithosts='sudo vim /etc/hosts'

# Php
function unlinkphp
    brew unlink php54 > /dev/null;
    brew unlink php56 > /dev/null;
end

function showphp54fpm
    set_color FF0
    php -v;
    set_color purple
    fpm54 status
    set_color normal
end

function showphp56fpm
    set_color FF0
    php -v;
    set_color purple
    fpm56 status
    set_color normal
end

function use54
    unlinkphp
    brew link php54 > /dev/null;
    killall php-fpm
    sudo rm /usr/sbin/php-fpm
    sudo ln -s /usr/local/Cellar/php55/5.4.39/sbin/php-fpm /usr/sbin/php-fpm
    fpm54 start > /dev/null;
    showphp54fpm
end

function use56
    unlinkphp
    brew link php56 > /dev/null;
    killall php-fpm
    sudo rm /usr/sbin/php-fpm
    sudo ln -s /usr/local/Cellar/php56/5.6.7/sbin/php-fpm /usr/sbin/php-fpm
    fpm56 start > /dev/null;
    showphp56fpm
end

function startserve
    mysql.server start
    use56
    sudo nginx
    sudo nginx -s reload
end

# PHP
function phpserve
    sudo php -S 0.0.0.0:$1
end
alias phpunit='./vendor/bin/phpunit --colors'
alias pf='./vendor/bin/phpunit --filter'
alias pb='./vendor/bin/phpunit --exclude=integration,external'
alias behat='./vendor/bin/behat'
alias bf='./vendor/bin/behat --tags=~skip -p'

# JS
alias lr='livereloadx --exclude ".idea" --include "*.twig"'

# Ip's
function privateip
    ip addr | awk "/inet / {sub(/\/.*/, '', $2); print $2}"
end

alias publicip="curl -s checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*\$//'"

function port_owner
    sudo netstat -tulpn | grep --color :$1
end

# Utils
alias reveal='open .'
alias count_files_recursive='find . -type f -print | wc -l'
alias watch_number_of_files='watch -n1 "find . -type f -print | wc -l"'
alias size_of_the_current_directory='du -ch | grep total'
alias YOLO='sudo find . -exec chmod 777 {} \;'
alias get_last_executed_command='echo $history[1]'
alias fuck!='sudo $history[1]'
alias stt='subl .'
function diff_between
    comm -23 <(sort $2) <(sort $1)
end
alias normalize_perissions='chmod 775'
alias copy_ssh_key='xclip -sel clip < ~/.ssh/id_rsa.pub'
alias fpm54='/usr/local/Cellar/php54/5.4.39/sbin/php54-fpm'
alias fpm56='/usr/local/Cellar/php56/5.6.7/sbin/php56-fpm'
function find_in_content_of
    find ./ -name "$1" -exec grep "$2" {} \; -print 2>/dev/null
end
function combine_uuid
    echo $argv | tr '[:lower:]' '[:upper:]' | sed 's/\-//g'
end

alias tunnel='ssh -i ~/.ssh/id_rsa -l rafael.gomez -p 8822 payments-tunnel.devel.akamon.com -g -R 1025:0.0.0.0:8080 -N -v'
alias removecache='rm -rf ./applications/*/app/cache/*'

