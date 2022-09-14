package { 'cowsay':
  ensure => installed,
}

file { '/etc/profile.d/cowsay-path.sh':
  mode    => '644',
  content => 'PATH=$PATH:/usr/games/',
}

file { '/root/hello2.txt':
  ensure  => present,
  content => "cowsay \"hello world!\"\n",
  require => Package['cowsay'],
}
