# Laravel Docker Starter
The old way to develop a Laravel app is kind of intermediating, where you need to install VirtualBox and Vagrant, and then import Homestead. That way also consumes so much computer resources and is considered to be heavy and slow. Now, Docker is the new standard which is much more lightweight, easy-to-work-with, and faster.

## Get Started
There are easy steps that let you laverage the power of Docker
1. First you need to download Laravel project eihter from official git repository or the one from your client.
2. Make a 'Dockerfile' which will be used to build your Laravel app. The example of Dockerfile can be found at 'Dockerfile'. 
3. Build Laravel app image by issuing the command 'docker build -t laravel-app .'
4. Make 'docker-compose.yaml' file. This file should create at least 3 services: 'laravel-app', 'mysql', and 'phpmyadmin'. The example of Dockerfile can be found at 'docker-compose.yaml'.
5. Run the command 'docker-compose up'
6. Navigate to 'localhost:8080' to see Laravel app, and 'localhost:8000' for phpmyadmin
