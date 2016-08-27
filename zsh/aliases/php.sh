alias phprepl='psysh'
alias fpm70='/usr/local/Cellar/php70/7.0.7/sbin/php-fpm'
alias fpm56='/usr/local/Cellar/php56/5.6.22/sbin/php56-fpm'

function unlink_php {
    brew unlink php56 > /dev/null;
    brew unlink php70 > /dev/null;
}

function use_php_70 {
    unlink_php
    brew link php70 > /dev/null;
    killall php-fpm
    fpm70;
}

function use_php_56 {
    unlink_php
    brew link php56 > /dev/null;
    killall php-fpm
    fpm56 start;
}

function startserve {
    mysql.server start
    use_php_70
    sudo nginx
    sudo nginx -s reload
}

function phpserve {
    sudo php -S 0.0.0.0:$argv
}

alias phpunit='./vendor/bin/phpunit --colors'
alias pf='./vendor/bin/phpunit --filter'
alias behat='./vendor/bin/behat'
alias bf='./vendor/bin/behat --tags=~skip -p'
alias bfp='./vendor/bin/behat --tags=~skip --format=progress -vvv -p'

function enable-xdebug {
    sudo mv /usr/local/etc/php/7.0/conf.d/ext-xdebug.ini.bak /usr/local/etc/php/7.0/conf.d/ext-xdebug.ini
}
function disable-xdebug {
    sudo mv /usr/local/etc/php/7.0/conf.d/ext-xdebug.ini /usr/local/etc/php/7.0/conf.d/ext-xdebug.ini.bak
}
function ci {
    disable-xdebug
    composer install $argv
    enable-xdebug
}
