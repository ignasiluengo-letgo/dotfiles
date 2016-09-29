alias aux='ps uax'
alias brwe='brew'
alias edithosts='sudo vim /etc/hosts'
alias copy='pbcopy'
alias copy_ssh_key='xclip -sel clip < ~/.ssh/id_rsa.pub'
alias count_files_recursive='find . -type f -print | wc -l'
alias fcb='soccer --team=FCB --time=100'
alias fuck!='sudo $history[1]'
alias k='kill -9'
alias lfp='soccer --standings --league=LLIGA'
alias reveal='open .'
alias size_of_the_current_directory='du -ch | grep total'
alias stt='subl .'
alias watch_number_of_files='watch -n1 "find . -type f -print | wc -l"'

function cdd {
    dir=$(ls -d */ | percol)

    cd $dir
}

function meteo_in {
    curl -4 http://wttr.in/$argv
}

function delete_dist_parameters {
    find . -type f -name "*parameters.yml.dist"| while read line
    do
        rm $(echo ${line} | sed "s/.yml.dist/.yml/")
        echo "$line deleted"
    done
}
