#web stack debugging
exec {'solve problem':
    path     => ['/usr/bin', /bin],
    command  => "sudo sed -i 's/15/1000/g' /etc/default/nginx; sudo service nginx restart",
    provider => 'shell',
}
