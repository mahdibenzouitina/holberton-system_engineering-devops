#Installs Nginx server using Puppet
exec {'install ngix':
    provider => shell,
    command => 'sudo apt- get -y update',
}

exec {'install ngix':
    provider => shell,
    command => 'sudo apt-get -y install nginx ; echo "Holberton School" | sudo tee /var/www/html/index.html',
}

exec {'install ngix':
    provider => shell,
    command => 'sudo sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me https:\/\/github.com\/pasignature permanent;/" /etc/nginx/sites-available/default',

}

exec {'install ngix':
    provider => shell,
    command => 'sudo service nginx start',
}