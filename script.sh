#!/bin/bash
apt update 
apt install -y nginx
for I in {1..5}
do
  echo "$I"
  sleep 1
done

echo "<h1>Hello from terraform</h1>" | sudo tee -a /var/www/html/index.nginx-debian.html
echo "<h1>WEBSERVER</h1>" | sudo tee -a /var/www/html/index.nginx-debian.html