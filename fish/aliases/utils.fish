alias edithosts='sudo vim /etc/hosts'
alias twitter='rainbowstream'
alias reveal='open .'
alias count_files_recursive='find . -type f -print | wc -l'
alias watch_number_of_files='watch -n1 "find . -type f -print | wc -l"'
alias size_of_the_current_directory='du -ch | grep total'
alias get_last_executed_command='echo $history[1]'
alias fuck!='sudo $history[1]'
alias stt='subl .'
alias normalize_perissions='chmod 775'
alias copy_ssh_key='xclip -sel clip < ~/.ssh/id_rsa.pub'
alias plogs='lnav'
alias brwe='brew'

function meteo_in
    curl -4 http://wttr.in/$argv
end

function delete_dist_parameters
    find . -type f -name "*parameters.yml.dist"| while read -l line
        rm (echo $line | sed "s/.yml.dist/.yml/")
    end
    echo 'Done!'
end
