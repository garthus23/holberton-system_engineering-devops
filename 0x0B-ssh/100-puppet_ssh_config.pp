# ssh client configuration
exec { 'puppet module install puppetlabs-stdlib':
  path => '/usr/bin'
}

file_line { 'Host':
      path => '/etc/ssh/ssh_config',
      line => 'Host 34.75.62.192',
}

file_line { 'key':
      path => '/etc/ssh/ssh_config',
      line => 'IdentityFile ~/.ssh/holberton',
}

file_line { 'nopass':
      path => '/etc/ssh/ssh_config',
      line => 'PasswordAuthentication no',
}
