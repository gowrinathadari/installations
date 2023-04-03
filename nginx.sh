#!/bin/sh

# Create the nginx.repo file
echo '[nginx]' | sudo tee /etc/yum.repos.d/nginx.repo
echo 'name=nginx repo' | sudo tee -a /etc/yum.repos.d/nginx.repo
echo 'baseurl=http://nginx.org/packages/centos/$releasever/$basearch/' | sudo tee -a /etc/yum.repos.d/nginx.repo
echo 'gpgcheck=0' | sudo tee -a /etc/yum.repos.d/nginx.repo
echo 'enabled=1' | sudo tee -a /etc/yum.repos.d/nginx.repo

# Update the yum cache
yum makecache

sudo yum install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

