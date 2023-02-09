#!/bin/bash

#!/bin/bash

echo ---------- Update the Snake Game server_name to this IP address --------------

# Vagrant Build
# sudo sed "s/IP_ADDRESS/$(hostname -I)/" /home/ubuntu/env/snake/snake-proxy.conf > /etc/nginx/sites-available/snake.game 

# Packer Build
sudo sed "s/IP_ADDRESS/$(curl -4 icanhazip.com)/" /home/ubuntu/env/snake/snake-proxy.conf > /etc/nginx/sites-available/snake.game

sudo sed -i "s/IP_ADDRESS/$DB_IP" /var/www/snake.game/html/scripts/Game.js

echo ---------- Reload Nginx --------------
sudo systemctl reload nginx.service