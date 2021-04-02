# ssh client configuration
exec { 'echo "Host 34.75.62.192" >> /etc/ssh/ssh_config':
  path => '/usr/bin'
}

exec { 'echo "  IdentityFile ~/.ssh/holberton" >> /etc/ssh/ssh_config':
  path => '/usr/bin'
}

exec { 'echo "  PasswordAuthentication no" >> /etc/ssh/ssh_config':
  path => '/usr/bin'
}
