# Set up your client SSH configuration file
exec {'config':
command  => 'echo "    IdentityFile ~/.ssh/holberton\n    ForwardAgent yes" >> /etc/ssh/ssh_config',
path     => '/bin',
}
