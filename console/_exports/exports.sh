export MY_SSH_USERNAME='rafa.gomez'

export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home/'
export SBT_OPTS='-Xms512M -Xmx1024M -Xss2M -XX:MaxMetaspaceSize=512m -XX:ReservedCodeCacheSize=256M -Dfile.encoding=UTF8'
export GOPATH="$HOME/.go"
export GEM_HOME=$HOME/.gem

export PATH=$PATH:~/bin:/usr/local/bin:/usr/local/sbin:$DOTFILES_PATH/bin:$DOTFILES_PATH/git/bin:~/.composer/vendor/bin:$JAVA_HOME/bin:$GOPATH/bin:$GEM_HOME/bin:/usr/local/opt/python/libexec/bin::/usr/local/opt/fzf/bin

export FZF_DEFAULT_OPTS='--color=bg+:24 --reverse'
