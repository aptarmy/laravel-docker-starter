FROM php:7.2-apache

# copy laravel project files and folders to container
COPY . /var/www/html

# edit user id in docker container to match your user id in local machine.
# in 'docker-compose.yml' file, will set the user to 'www-data'
# this trick avoid all file permission problems
RUN usermod -u 1000 www-data
RUN groupmod -g 1000 www-data
# the default shell path of www-data user is '/usr/sbin/nologin' which means
# we are not allowed to use 'su - www-data' command in docker container
# by setting shell command to '/bin/bash', we are now allowed to do so.
RUN usermod -s /bin/bash www-data

# edit apache config to let it serve http request from $APACHE_DOCUMENT_ROOT which is set to '/var/www/html/public'
# in 'docker-compose.yml' file
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# install pdo_mysql extension. this command is provided by php image
RUN docker-php-ext-install pdo_mysql

# enable mode rewrite of apache
RUN a2enmod rewrite

# tell docker that this image expose port 80
EXPOSE 80

