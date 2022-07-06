# removing "p" from "phpp" in wp-settings.php

exec {'remove character':
  command => 'sed -i "s/.phpp/.php/g"  /var/www/html/wp-settings.php',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  onlyif  => 'test -f /var/www/html/wp-settings.php'
}
