group { 'bgodley': 
  ensure => present,
  gid    => '1000',
}

user { 'bgodley':
  ensure   => present,
  uid      => '1000',
  gid      => '1000',
  home     => '/home/bgodley/'
  password => 'abab'
}

directory { '/home/bgodley/': 
  ensure => present,
}
