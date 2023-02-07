#!/bin/bash

echo ---------- Save DB IP Address  ----------
DB_IP=http://$(sudo cat /home/vagrant/global/hostname.txt | xargs):5550/api/scores

echo ---------- Update the Snake Game server_name to this IP address --------------
sudo sed "s/IP_ADDRESS/$(hostname -I)/" /home/vagrant/env/snake/snake-proxy.conf > /etc/nginx/sites-available/snake.game

sudo sed -i "s/IP_ADDRESS/$(echo $DB_IP | sed 's#/#\\/#g')/" /var/www/snake.game/html/scripts/Game.js
