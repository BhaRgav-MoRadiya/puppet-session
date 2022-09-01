# node default {

#   file{'/etc/somefile.txt':
#     ensure => file,
#     source => 'puppet:///modules/fileserver/some-randomfile.txt',
#   }
# }



node default {
  $for_template = 'append Me..'

  file{'/etc/somefile.txt':
    ensure  => file,
    content => template('fileserver/file-template.erb'),
  }
}



# node default {
# include fileserver
# }

