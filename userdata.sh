#!/bin/bash
sudo apt update -y
sudo apt install -y apache2
echo "<h1>Hello from Auto Scaling EC2</h1>" | sudo tee /var/www/html/index.html
sudo systemctl enable apache2
sudo systemctl start apache2


