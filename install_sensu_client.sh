#!/bin/bash
ip=$1
echo $ip > out
sudo yum update -y
sudo yum install git wget vim nano -y
cd /tmp/
wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -ivh epel-release-latest-7.noarch.rpm
sudo yum install epel-release -y
sudo yum install ansible -y
cd /home/
git clone https://github.com/devopszone/sensu_install.git
cd /home/sensu_install
/usr/bin/ansible-playbook /home/sensu_install/setup_client.yml > output.txt 
