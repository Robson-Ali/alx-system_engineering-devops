<<<<<<< HEAD
#Using strace, find out why Apache is returning a 500 error. Once you find the issue, fix it and then automate it using Puppet (instead of using Bash as you were previously doing).
=======
>>>>>>> 51c922de1bb29714d77ddb0f0b5901e2e26d0de3
# Puppet manifest to fix a bug in wp-setings.php

exec { 'fix the php extension issue':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
