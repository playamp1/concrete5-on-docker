#!/usr/sh

version="$1"

if [ -n "$1" ];then
    echo "${version}" > ../docker/app/.version
else
    echo "lastest" > ../docker/app/.version
fi

CMDNAME=`basename $0`

# Move to project root
ROOT_DIR=`dirname $0`/..
cd $ROOT_DIR

rm -rf ./src/concrete5
rm -rf ./db_data
docker-compose build
docker-compose down
docker-compose up -d

