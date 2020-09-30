# fixing Apache when id returning a 500 error
exec {'debug':
path     => '/usr/local/bin/:/bin/',
command  => "sed -i 's/class-wp-locale.phpp/class-wp-locale.php/g' /var/www/html/wp-se\
ttings.php",
provider => 'shell',
}
