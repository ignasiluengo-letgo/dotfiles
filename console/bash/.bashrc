export DOTFILES_PATH=$HOME/.dotfiles
export PATH=$HOME/sdk/flutter/bin:$PATH
source $DOTFILES_PATH/console/init.sh
source $DOTFILES_PATH/console/bash/themes/rafa.sh
alias adminer='docker run -d --rm --network bouncer_default --network reporting_default --name adminer -p 3000:8080 adminer'
alias dynamo-admin='docker run -d --network bouncer_default --network reporting_default -e DYNAMO_ENDPOINT=http://us-east-1.amazonaws.local:4569 -p 8000:8000 -it --rm --name dynamo-admin boogak/dynamodb-admin'
