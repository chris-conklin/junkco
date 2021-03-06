#!/bin/bash

# run this after clean env
sudo apt-get install -y apache2 
sudo apt-get install -y php5
sudo apt-get install -y php5-gd
sudo apt-get install -y libapache2-mod-auth-mysql 
sudo apt-get install -y php5-mysql 
sudo apt-get install -y phpmyadmin

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password password'
sudo apt-get -y install mysql-server

sudo cp /etc/apache2/sites-enabled/000-default.conf /etc/apache2/sites-enabled/000-default.conf.orig
sudo cp 000-default.conf /etc/apache2/sites-enabled/000-default.conf

sudo service apache2 restart


