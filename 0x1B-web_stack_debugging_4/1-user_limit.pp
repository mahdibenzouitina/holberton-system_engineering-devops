#web stack debugging
exec {'holberton soft nofile':
path     => ['/usr/bin/'],
command  => "sudo sed -i 's/holberton soft nofile 4/soft nofile 1997/g' /etc/security/limits.conf",
provider => 'shell',
}
exec {'holberton hard no file':
path     => ['/usr/bin/'],
command  => "sudo sed -i 's/holberton hard nofile 5/hard nofile 1997/g' /etc/security/limits.conf",
provider => 'shell',
}
