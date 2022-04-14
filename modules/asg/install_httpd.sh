#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<h1>Welcome to our ${prefix} in ${env}! Group 24 members: Sneha Pillay, Sneha Mudavath, Arun Bains and Varnika Bassi| Request resolved by $(hostname -f) | Built by Terraform!"  >  /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd