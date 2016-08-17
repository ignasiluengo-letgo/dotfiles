function uuid_to_db
    set uuid (echo $argv | tr '[:lower:]' '[:upper:]' | sed 's/\-//g')
    echo -n $uuid | pbcopy
    echo $uuid
end

function uuid_db
    set uuid (uuidgen | sed 's/\-//g')
    echo -n $uuid | pbcopy
    echo $uuid
end

function uuid_code
    set uuid (uuidgen | tr '[:upper:]' '[:lower:]')
    echo -n $uuid | pbcopy
    echo $uuid
end
