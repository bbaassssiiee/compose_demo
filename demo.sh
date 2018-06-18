#!/bin/bash

# build:
echo
echo 'build the container(s) with MY_VAR in .env'
echo
unset MY_VAR
docker-compose down
docker-compose rm
docker-compose build
echo


# run1:
echo 'run the container(s) with MY_VAR defined in .env'
echo
unset MY_VAR
docker-compose up
echo

# run2:
echo 'run the container(s) with MY_VAR defined at run-time'
echo
export MY_VAR=run
docker-compose up
echo
