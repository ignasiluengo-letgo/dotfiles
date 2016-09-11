function docker_connect {
    container=$(docker ps | awk '{if (NR!=1) print $1 ": " $(NF)}' | percol --prompt='<green>Select the container:</green> %q')
    container_id=$(echo $container | awk -F ': ' '{print $1}')

    docker exec -i -t $container_id /bin/bash
}
