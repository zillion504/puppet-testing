package { 'cowsay':
  ensure => installed,
}

file { '/root/hello2.txt':
  ensure  => present,
  content => "cowsay \"hello world!\"\n",
  require => Package['cowsay'],
}
