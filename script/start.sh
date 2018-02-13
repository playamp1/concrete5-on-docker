#!/usr/sh

CMDNAME=`basename $0`

# Move to project root
ROOT_DIR=`dirname $0`/..
cd $ROOT_DIR

docker-compose build
docker-compose down
docker-compose up -d

