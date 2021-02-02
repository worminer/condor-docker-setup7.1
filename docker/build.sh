#!/bin/bash
set -e

# Create logs folders
if ! [[ -d ../logs/apache ]]; then
    mkdir -p ../logs/apache
fi

if ! [[ -d ../logs/mysql ]]; then
    mkdir -p ../logs/mysql
fi

if ! [[ -d ../logs/php ]]; then
    mkdir -p ../logs/php
fi

# Create database folder
if ! [[ -d ../database ]]; then
    mkdir ../database
fi

# Create www folders and add default content
if ! [[ -d ../www ]]; then
    mkdir ../www
    mkdir ../www/default
    echo "<?php phpinfo(); ?>" > ../www/default/index.php
fi

# BUILD DOCKER CONTAINERS
docker-compose up --build

#detached mode
#docker-compose up -d --build
