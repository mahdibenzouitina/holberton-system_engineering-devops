#!/usr/bin/env bash
#custom HTTP header response, but with Puppet.

exec {'HAproxy':
command  => 'hostname=$(cat /etc/hostname) &&
	        sudo apt-get -y update && 
            sudo apt-get -y install nginx && 
            sudo sed -i "40i \\\tadd_header X-Served-By \$hostname;\n" /etc/nginx/sites-enabled/default &&
            sudo service nginx restart',',
provider => shell,
}