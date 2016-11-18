alias phprepl='psysh'

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
