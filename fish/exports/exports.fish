set MY_SSH_USERNAME 'rafa.gomez'

set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/
set -x SBT_OPTS "-Xms512M -Xmx1024M -Xss6M -XX:MaxMetaspaceSize=512m -XX:+CMSClassUnloadingEnabled"

set -U fish_user_paths ~/bin ~/.dotfiles/bin ~/.composer/vendor/bin $JAVA_HOME /usr/local/sbin

set -x FZF_DEFAULT_OPTS '--color=bg+:24 --reverse'
