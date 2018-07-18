# Docker For PHP Developers
- [Docker For PHP Developers](#docker-for-php-developers)
    - [Chapter 1: Up and Running](#chapter-1-up-and-running)
    - [Chapter 2: PHP Container Basics](#chapter-2-php-container-basics)
    - [Chapter 3: LAMP](#chapter-3-lamp)
    - [Chapter 4: Development Tools](#chapter-4-development-tools)

## Chapter 1: Up and Running
- `docker ps` - list running docker containers
- `docker ps -a` - list all containers (running and non)
- `docker rm <CONTAINER_ID>` - Removes a container
- `docker rmi` - Can remove multiple images, IDs separated by a space
    - Example: `docker rmi 48b5124b2768 8672b4215b84`

## Chapter 2: PHP Container Basics
- DOCKERFILE:
    - Create directory
    - `touch Dockerfile docker-compose.yml index.php`
    - Update Dockerfile
    - Update index.php
    - `docker build -t <APP_NAME> .`
    - `docker run -p 8080:80 -d --name=<IMG_NAME> <APP_NAME>`
    - `docker ps` to show running container
    - Shut down cotainer: `docker stop docker-php`
    - RM the container: `docker rm docker-php`
- DOCKER COMPOSE YML
    - Compose is a tool for defining and running multi-container Docker applications
    - PORT: <host_- port>:<container_port>
    - `docker-compose up -d`: Run it in the background
    - `docker exec -it <IMG_ID> bash` if you want to run bash in the container

## Chapter 3: LAMP
- Set up Lumen and create new project `lumen new <PROJECT_NAME>`
- `touch Dockerfile docker-compose.yml`
- `mkdir -p .docker/{php,apache}` - create .docker directory with php and apache
directories
- `touch .docker/php/php.ini`
- `touch .docker/apache/vhost.conf`
- Set up Dockerfile, php.ini, vhost and docker-compose.yml.
- `docker-compose up --build`
- Add mysql module to Dockerfile
- `docker-compose stop` `docker-compose build`
- update docker-compose.yml with mariadb stuff
- Set up `.env`
- bash inside container: `docker exec -it <CONTAINER_ID> bash`
- `cd /srv/app`
- `php artisan migrate`
- Add opcache
- enable apache modules

## Chapter 4: Development Tools
- Dev environment, XDebug, etc.
- 