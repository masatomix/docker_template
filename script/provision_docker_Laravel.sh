#!/bin/bash

cd /vagrant/
mkdir app && cd $_ 
git clone https://github.com/Laradock/laradock.git
cd laradock
cp -pfr env-example .env
sudo docker-compose up -d nginx mysql phpmyadmin redis workspace
