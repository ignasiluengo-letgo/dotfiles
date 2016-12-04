alias gc='git commit -a'
alias gco='git checkout'
alias ga='git commit --amend'
alias gd='git diff --color'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset %C(yellow)%d%Creset %an: %s - %Creset %Cgreen(%cr, %cd)%Creset" --abbrev-commit --date=iso'
alias gs='git status -sb'
alias gf='git fetch --all -p'
alias gp='git push'
alias gpl='git pull'
alias gmm='git merge master'
alias gpum='git pull upstream master'
alias gpom='git pull origin master'
alias gb='git branch'
alias gdb='git branch -D'

function git_clean_branches {
    echo $(git branch | awk -F ' +' '! /\(no branch\)/ {print $2}' | xargs) $(git branch -r | sed 's/origin\///' | xargs) | tr ' ' '\n' | sort | uniq -u | xargs git branch -D
}
