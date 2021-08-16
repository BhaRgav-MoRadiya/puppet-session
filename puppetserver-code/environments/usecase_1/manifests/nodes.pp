node default {

  $str = 'Not a Confidential Files.Do not delete.'

  file{'/etc/somefile.txt':
    ensure  => file,
    content => $str,
  }
}
