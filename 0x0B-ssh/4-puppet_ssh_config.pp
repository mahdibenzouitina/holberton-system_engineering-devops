# Set up your client SSH configuration file
exec {'config':
command  => 'echo "    IdentityFile ~/.ssh/holberton\n    PasswordAuthentication no" >> /etc/ssh/ssh_config',
path     => '/bin',
}
