# ssh client configuration
file { '/home/ubuntu/.ssh':
      ensure => directory,
      owner  => 'ubuntu',
      group  => 'ubuntu',
}
file { '/home/ubuntu/.ssh/ssh_config':
      ensure => present,
      owner  => 'ubuntu',
      group  => 'ubuntu',
      mode   => '0644',
}
file_line { 'Declare identity file':
      ensure => present,
      path   => '/home/ubuntu/.ssh/ssh_config',
      line   => 'IdentityFile ~/.ssh/holberton',
}

file_line { 'Turn off passwd auth':
      ensure => present,
      path   => '/home/ubuntu/.ssh/ssh_config',
      line   => 'PasswordAuthentication no',
}
