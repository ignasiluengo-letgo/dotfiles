alias gc='git commit'
alias ga='git commit --amend'
alias gca='git add -A; git commit --amend'
alias gd='git diff --color'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset %C(yellow)%d%Creset %an: %s - %Creset %Cgreen(%cr, %cd)%Creset" --abbrev-commit --date=iso'
alias gs='git status -sb'
alias gf='git fetch --all -p'
alias gp='git push'
alias gpl='git pull'
alias gmm='git merge master'
alias gpum='git pull upstream master'
alias gpom='git pull origin master'
alias gfp='git push -f'
alias git-changed-files='git diff --name-only master'

function github_diff
    switch (count $argv)
    case 0
        set repo rgomezcasas/dotfiles
        set compare_from master
        set compare_to master
    case 1
        set repo $argv[1]
        set compare_from master
        set compare_to master
    case 2
        set repo $argv[1]
        set compare_from $argv[2]
        set compare_to master
    case 3
        set repo $argv[1]
        set compare_from $argv[2]
        set compare_to $argv[3]
    end

    set url https://github.com/"$repo"/compare/"$compare_from"..."$compare_to"
    echo -n $url | pbcopy
    echo $url
end
