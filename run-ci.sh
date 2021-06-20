#!/bin/bash

chmod -R 777 resource/consul/* && chmod -R 777 resource/postgres/* && docker-compose up -d && docker exec -it consul-server1 sh script.sh

exit 0