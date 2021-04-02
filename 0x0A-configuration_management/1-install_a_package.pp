# create holberton file in tmp
package { 'ruby':
  ensure  => 'installed',
}

package { 'puppet-lint':
    ensure   => '2.1.1',
    provider => 'gem',
}
