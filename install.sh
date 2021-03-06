#!/bin/bash
git clone https://github.com/laravel/laravel.git www
cp ./app/.env ./www/.env 
docker-compose up --build -d
docker-compose exec app chmod -R 777 storage && docker-compose exec app chmod -R 777 bootstrap/cache
docker-compose exec app composer install
docker-compose exec app php artisan key:generate 