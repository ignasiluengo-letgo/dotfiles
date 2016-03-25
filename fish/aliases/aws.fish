function s
    ec2s $argv | percol --prompt='CONNECT TO>' | read -l target
    set ip (echo $target | awk '{print $2}')
    ssh -l $MY_SSH_AKAMON_USERNAME $ip
end
