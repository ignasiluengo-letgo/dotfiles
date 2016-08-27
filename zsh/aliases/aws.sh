function s {
    server_to_connect=$(ec2s $argv | percol --prompt='<green>Select the server:</green> %q')
    server_ip=$(echo $server_to_connect | awk '{print $2}')
    ssh -l $MY_SSH_AKAMON_USERNAME $server_ip
}
