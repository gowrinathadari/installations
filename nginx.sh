#! /bin/sh

# Install nginx server using shell script with executing in single step

#create a new repository configuration file

 echo "[nginx]
name=nginx repo
baseurl=https://nginx.org/packages/centos/$releasever/$basearch/
gpgcheck=0
enabled=1" > /etc/yum.repos.d/nginx.repo

#update the yum cache
sudo yum makecache

sudo yum install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

