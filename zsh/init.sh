# Fix for slow docker-machine env default https://github.com/docker/machine/issues/1884#issuecomment-169509429
prepare_docker_machine_env=$(docker-machine inspect default -f "export DOCKER_HOST='tcp://{{.Driver.IPAddress}}:2376' DOCKER_CERT_PATH='{{.Driver.StorePath}}/machines/{{.Driver.MachineName}}' DOCKER_MACHINE_NAME='{{.Driver.MachineName}}' DOCKER_TLS_VERIFY=1") &>/dev/null
eval $prepare_docker_machine_env

source $ZSH_CUSTOM/etc/percol_select_history.sh
