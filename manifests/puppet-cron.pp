package { 'cron':
  ensure => installed
}

file { '/usr/local/bin/run-puppet':
  source => '/opt/git/puppet/files/run-puppet.sh',
  mode   => '0755',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/15',
}
