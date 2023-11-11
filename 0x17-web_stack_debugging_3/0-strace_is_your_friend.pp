#Using strace, find out why Apache is returning a 500 error. Once you find the issue, fix it and then automate it using Puppet (instead of using Bash as you were previously doing).
exec {'/etc/php5/apache2/php.ini':
  path    => [ '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' ],
  command => "sed -i 's/display_errors = Off/display_errors = On/g' /etc/php5/apache2/php.ini",
}

exec { '/var/www/html/wp-setting.php':
  path    => [ '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' ],
  command => "sed -i 's/class-wp-locale.phpp/class-wp-locale.php/g' /var/www/html/wp-settings.php",
}

exec {'/etc/init.d/apache2':
  path    => ['/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'],
  command => '/etc/init.d/apache2 restart',
}
