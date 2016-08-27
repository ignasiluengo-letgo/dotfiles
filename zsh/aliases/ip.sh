alias privateip='ipconfig getifaddr en0'
alias publicip="curl -s checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*\$//'"

function port_owner {
    lsof -n -i4TCP:$argv | grep LISTEN
}
