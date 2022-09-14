package { "cowsay":
  ensure => installed,
}

file { "/root/cow_hello":
  ensure  => present,
  content => 'cowsay "hello world!"',
  require => Package["cowsay"],
}