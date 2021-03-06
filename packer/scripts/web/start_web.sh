#!/bin/bash

AZ1=$2
AZ2=$3

export CONTACT_POINTS=$1
export LOCAL_DATA_CENTER=$(echo $AZ1 | sed 's/.$//')
export REMOTE_DATA_CENTER=$(echo $AZ2 | sed 's/.$//')
export CREATE_SCHEMA=${4:-false}

cd service
java -jar target/service-1.0-SNAPSHOT.jar server config.yml