#!/usr/bin/env bash
#custom HTTP header response, but with Puppet.

exec {'HAproxy':
command  => 'sudo apt-get -y update &&
sudo apt-get -y install nginx &&
hostname=$(cat /etc/hostname) &&
file='/etc/nginx/nginx.conf' &&
sudo sed -i "48 i\ \tadd_header X-Served-By $hostname;\n" /etc/nginx/sites-enabled/default &&
sudo service nginx restart',
provider => shell,
}