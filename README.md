# Laravel Docker Starter
The old way of developing a Laravel app is kind of intermediating, where you need to install VirtualBox and Vagrant, and then import Homestead. Not only that it consumes so much computer resources, but it's also considered to be heavy and slow. Now, Docker is the new standard which is much more lightweight, easy-to-work-with, and faster.

## Get Started
There are easy steps that let you laverage the power of Docker
1. First you need to download Laravel project eihter from official git repository or the one from your client.
2. Install php dependencies using Docker Composer. run the command `docker run --rm --tty -v $(pwd):/app composer install`
3. Make a `Dockerfile` which will be used to build your Laravel app. The example of Dockerfile can be found at `Dockerfile`.
4. Build Laravel app image by issuing the command `docker build -t laravel-app .`
5. Make `docker-compose.yaml` file. This file should create at least 3 services: `laravel-app`, `mysql`, and `phpmyadmin`. The example of Dockerfile can be found at `docker-compose.yaml`.
6. Run the command `docker-compose up`
7. Navigate to `localhost:8080` to see Laravel app, and `localhost:8000` for phpmyadmin
