# Docker For PHP Developers
- [Docker For PHP Developers](#docker-for-php-developers)
    - [Chapter 1: Up and Running](#chapter-1-up-and-running)
    - [Chapter 2: PHP Container Basics](#chapter-2-php-container-basics)

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
    - 

