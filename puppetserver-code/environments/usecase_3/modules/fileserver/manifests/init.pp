# fileserver class
class fileserver {

  $for_template = 'append Me...'
  file{'/etc/somefile.txt':
    ensure  => file,
    content => template('fileserver/file-template.erb'),
  }

}
