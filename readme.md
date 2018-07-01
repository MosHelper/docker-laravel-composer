# Development Laravel project and Composer with Docker

## Setup new Laravel project in 2 step.
1. Git clone `docker-laravel-composer`
```
git clone https://github.com/MosHelper/docker-laravel-composer.git docker-laravel
```
2. Go to folder docker-laravel
- if you use Ubuntu or Linux run Command
```
chmod +x ./install.sh
./install.sh
```
- if you use Windows open CMD and run
```
git clone https://github.com/laravel/laravel.git www

docker-compose up --build -d
docker-compose exec app chmod -R 777 storage && docker-compose exec app chmod -R 777 bootstrap/cache
docker-compose exec app composer install
docker-compose exec app php artisan key:generate 
```
## Remove Docker container.
Open bash or CMD and run Command 
```
docker-compose down --remove-orphans
```
