#!/bin/bash

sleep 30

sudo apt update
sudo apt install nginx -y

# Install zip 
sudo apt install zip -y

# Unzip File
cd /tmp/ && unzip Torreswebsite.zip


#To make our site working, restart Nginx service.
sudo service nginx restart