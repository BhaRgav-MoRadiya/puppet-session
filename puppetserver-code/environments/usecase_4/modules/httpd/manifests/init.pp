# httpd class
class httpd (
  $httpd_port = 80,
) {
  exec {'/usr/bin/apt update':

  }
  package { 'apache2':
    ensure => installed, # '2.4.18-2ubuntu3.17',
  }
  service { 'apache2':
    ensure   => running,
    enable   => true,
    provider => 'systemd',
    require  => Package['apache2'],
  }
  file {'/etc/apache2/sites-enabled/testserver.conf':
    ensure  => file,
    content => template('httpd/testserver.conf.erb'),
    notify  => Service['apache2'],
    require => Package['apache2'],
  }
  file { '/var/www/testserver':
    ensure => directory,
  }

}
