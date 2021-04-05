# Install webserver Nginx

package { 'nginx':
  ensure   => latest,
}

file_line { 'add location':
  ensure   => present,
  path     => '/etc/nginx/sites-enabled/default',
  line     => ' location /redirect_me {',
  match    => '^}$',
}

file_line { 'add location1':
  ensure   => present,
  path     => '/etc/nginx/sites-enabled/default',
  line     => '         return 301 https://www.youtube.com/watch?v=nQAdYNB8nXU;',
}

file_line { 'add location2':
  ensure   => present,
  path     => '/etc/nginx/sites-enabled/default',
  line     => '         }',
}

file_line { 'add location3':
  ensure   => present,
  path     => '/etc/nginx/sites-enabled/default',
  line     => '}',
}

file { '/etc/nginx/sites-enabled/default':
    notify => Service[nginx],
}

service { nginx:
  ensure  => running,
}

