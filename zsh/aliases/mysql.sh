function delete_mysql_db_starting_by {
    mysql -uroot -N -B -e "SELECT CONCAT('DROP DATABASE ', SCHEMA_NAME, ';') AS QUERY FROM information_schema.SCHEMATA WHERE SCHEMA_NAME LIKE '$argv%';" | while read line
    do
        echo "Executing $line"
        mysql -uroot -e "$line"
    done
}
