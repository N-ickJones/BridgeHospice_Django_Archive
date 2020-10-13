
software=$1
cmd=$2
file=$3

if [[ $software == "postgres" ]]; then
    echo "software: postgres"
    if [[ $cmd == "dump" ]]; then
        echo "Dumping data"
        if [[ $file ]]; then
            docker-compose -f $file exec db pg_dumpall -c -U postgres | gzip > backup/dump_`date +%d-%m-%Y"_"%H_%M_%S`.gz
        else
            docker-compose exec db pg_dumpall -c -U postgres | gzip > backup/dump_`date +%d-%m-%Y"_"%H_%M_%S`.gz
        fi
        
    elif [[ $cmd == "load" ]]; then
        echo "Loading Data"
        if [[ $file ]]; then
            echo "not yet implemented"
        else
            echo "not yet implemented"
        fi
    else
        echo "Invalid Command Argument"
        exit 1
    fi

elif [[ $software == "django" ]]; then
    echo "software: django"
    if [[ $cmd == "dump" ]]; then
        echo "Dumping data"
        if [[ $file ]]; then
            docker-compose -f $file exec web bash python manage.py dumpdata --natural-foreign > all.json
        else
            docker-compose exec web bash python manage.py dumpdata --natural-foreign > all.json
        fi
    elif [[ $cmd == "load" ]]; then
        echo "Loading Data"
        if [[ $file ]]; then
            echo "not yet implemented"
        else
            echo "not yet implemented"
        fi
    else
        echo "Invalid Command Argument"
        exit 1
    fi
else
    echo "Invalid Software Argument"
    exit 1
fi
