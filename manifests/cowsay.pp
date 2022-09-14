package { 'cowsay':
  ensure => installed,
}

file { '/root/hello.txt':
  ensure  => present,
  content => "cowsay "hello world!"",
  require => Package['cowsay'],
}
