#!/bin/bash

docker-compose up > /dev/null &
sleep 2
docker-compose run -e “RAILS_ENVIRONMENT=development” web rake db:migrate 
