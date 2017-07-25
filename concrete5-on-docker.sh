#!/bin/sh

rm -rf ./src/*
curl -O -L https://github.com/concrete5/concrete5/archive/master.zip -o ./master.zip
unzip ./master.zip -d ./src/
rm -f ./master.zip
docker-compose build
docker-compose up -d
docker exec -t c5-app composer install
docker exec -t c5-app bash /var/www/html/concrete/bin/concrete5 c5:install --db-server=mysql --db-username=user --db-password=password --db-database=concrete5db --site=Name --starting-point=elemental_blank --admin-email=hoge@example.com --admin-password=password --site-locale=ja_JP