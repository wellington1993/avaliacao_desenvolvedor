#!/usr/bin/env bash

# sudo snap install docker

# docker rm -v avaliacao

# time docker build -t avaliacao .
# docker run --rm -d -p 3001:3000 -it avaliacao
docker-compose up --build

# docker ps | grep 'rails'
# sudo chown -R $USER:$USER .

# docker exec -it avaliacao /bin/bash
# docker-compose run web rake db:create

