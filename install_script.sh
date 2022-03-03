#!/bin/sh
sudo apt update && sudo apt install -y git mcedit apt-transport-https ca-certificates curl software-properties-common && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" && sudo apt update && apt-cache policy docker-ce && sudo apt install -y docker-ce && sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose
rm -rf dosya
git clone https://github.com/torosyatko/dosya.git
cd dosya
mv .env-example .env
sudo docker-compose stop
sudo docker-compose up -d torserv
sudo docker-compose build --no-cache torosya
sudo docker-compose up torosya
