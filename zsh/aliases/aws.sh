function s {
    server_to_connect=$(ec2s $argv | percol --prompt='<green>Select the server to connect:</green> %q')
    server_ip=$(echo $server_to_connect | awk '{print $2}')
    ssh -i $MY_PEM_FILE ec2-user@$server_ip
}
