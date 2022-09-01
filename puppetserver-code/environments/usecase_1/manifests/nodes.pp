node default {

  $str = 'Its not a Confidential Files.Do not delete.'

  file{'/etc/somefile.txt':
    ensure  => file,
    content => $str,
  }
}
