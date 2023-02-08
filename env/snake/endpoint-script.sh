#!/bin/bash

echo ---------- Update the Snake Game server_name to this IP address --------------
sudo sed "s/IP_ADDRESS/$(hostname -I)/" /home/vagrant/env/snake/snake-proxy.conf > /etc/nginx/sites-available/snake.game
sudo sed -i "s/IP_ADDRESS/$DB_IP" /var/www/snake.game/html/scripts/Game.js

echo ---------- Reload Nginx --------------
sudo systemctl reload nginx.service