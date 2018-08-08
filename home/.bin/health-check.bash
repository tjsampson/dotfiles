#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

if [ $# -eq 0 ]
then
    echo -e "${RED}No arguments supplied${NC}"
    exit 1
fi

if [ -z "$1" ]
then
    echo "Invalid Arg"
    exit 1
fi

URL=$1

while sleep 1; do
    time_stamp=`date`
    status=`curl -si $URL| grep HTTP | awk {'print $2'}`
    if [ $status -eq 200 ]; then
        status_color=${GREEN}
    else
        status_color=${RED}
    fi
    echo -e "${status_color}${status}    -    ${time_stamp}${NC}"
done

