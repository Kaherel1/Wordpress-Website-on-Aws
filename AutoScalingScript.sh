#!/bin/bash

sudo dnf update -y
sudo dnf amazon-efs-utils -y
sudo mkdir -p /var/www/html

MY_EFS=<File System Name>

sudo dnf install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y
sudo dnf install httpd mariadb105-server -y

sudo systemctl enable httpd mariadb --now

sudo chown -R apache:apache /var/www   

echo "$MY_EFS:/ /var/www/html nfs4 nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 0 0" >> /etc/fstab
sudo mount -a

sudo systemctl restart httpd  
