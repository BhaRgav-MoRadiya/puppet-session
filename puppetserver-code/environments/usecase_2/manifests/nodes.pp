node default {

  file{'/etc/somefile.txt':
    ensure => file,
    source => 'puppet:///modules/fileserver/some-randomfile.txt',
  }
}
