#!/bin/bash

set -e # exit on error
set -x # debugging

export WAIT_HOSTS="127.0.0.1:2003" # wait for carbon input before sending data

docker-compose -f docker/docker-compose.yml up -d
scripts/wait_for_endpoint.sh scripts/generate_test_data.sh start
