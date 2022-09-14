group { 'bgodley': 
  ensure => present,
  gid    => '1000',
}

user { 'bgodley':
  ensure   => present,
  shell    => '/bin/bash',
  uid      => '1000',
  gid      => '1000',
  home     => '/home/bgodley/',
  password => 'abab',
}

file { '/home/bgodley/': 
  ensure  => directory,
  source  => 'file:///etc/skel/',
  owner   => '1000',
  group   => '1000',
  recurse => true,
}
