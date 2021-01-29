# Apache-php7.1-mysql8-docker-container
## A full web application with php-fpm, Apache and MySQL.

This project make use of `docker-compose` to build three containers:
1. **Apache 2.4**
2. **PHP-fpm 7.1**
3. **MySQL 8**

The only container exposed is the Apache container on port 80.

Project structure:
```
Apache-php-mysql-modsecurity-docker-container
|
|- database
    |- data..
    |- ..
|- docker
    |- apache
        |- config
            |- 000-default.conf
            |- httpd.conf
        |- Dockerfile
    |- mysql
        |- Dockerfile
    |- php
        |- config
            |- apcu.ini
            |- opcache.ini
            |- php.ini
            |- www.conf
        |- Dockerfile
    |- .env
    |- build.sh
    |- destroy.sh
    |- docker-compose.yml
    |- run-sh
|- logs
    |- apache
        |- ...
    |- mysql
        |- ...
    |- php
        |- ...
|- www
```

## Some notes
- PHP is configured with APCu and OPCACHE.
- The volume folder Database is shared only to the mysql container which save and persists data in here.
- The `.env` file contains some configurations and passwords passed to containers and environment variables.
- All containers are linked in a bridge network and have static ip address configured in `.env`
- Set your TimeZone in the `.env` file. The containers will also take the timezone from your host computer through /etc/timezone and /etc/localtime volume shares.

## What you need to do
First `git clone https://github.com/bestrocker221/apache-php-mysql-modsecurity-docker-container`

1. (optional) Set your preferred settings in .env
2. (optional) Set your preferred website settings in apache/config/000-default.conf.
3. (optional) Set your preferred settings in php/config otherwise leave them intact.
4. Choose to use an existing db and then copy the data to the ./database folder, otherwise just let the build create another one.
5. Copy your WEB PROJECT into `www`

Then
```
$ ./build.sh
```