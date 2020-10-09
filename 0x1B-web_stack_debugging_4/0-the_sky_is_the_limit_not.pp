#web stack debugging
exec {'solve problem':
    path     => ['/usr/bin'],
    command  => "sudo sed -i 's/15/1997/g' /etc/default/nginx; sudo service nginx restart",
    provider => 'shell',
}
