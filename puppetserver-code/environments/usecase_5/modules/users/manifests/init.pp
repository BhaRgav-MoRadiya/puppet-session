## users defined resource
define users(
  $username,
  $teamname,
){
  if !defined(Group[$teamname]){
    group{$teamname:
      ensure => present,
    }
  }

  user{$username:
    ensure     => present,
    groups     => $teamname,
    managehome => true,
    require    => Group[$teamname],
  }

  file{"/home/${username}/user-file.sh":
    ensure  => file,
    owner   => $username,
    group   => $teamname,
    source  => 'puppet:///modules/users/user-static-file.sh',
    require => User[$username],
  }

  file{"/home/${username}/user-info.txt":
    ensure  => file,
    owner   => $username,
    group   => $teamname,
    content => template('users/user-dynamic-file.erb'),
    require => User[$username],
  }

}
