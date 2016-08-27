function uuid_to_db {
    uuid=$(echo $argv | tr '[:lower:]' '[:upper:]' | sed 's/\-//g')
    echo -n $uuid | pbcopy
    echo $uuid
}

function uuid_db {
    uuid=$(uuidgen | sed 's/\-//g')
    echo -n $uuid | pbcopy
    echo $uuid
}

function uuid_code {
    uuid=$(uuidgen | tr '[:upper:]' '[:lower:]')
    echo -n $uuid | pbcopy
    echo $uuid
}
