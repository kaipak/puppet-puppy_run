class puppy_run {
  $kennel = '/opt/pups'
  puppy_run::puppy { 'athena': }
  
  file { $kennel:
    ensure => directory,
  }

  file { "${kennel}/athena.txt":
    ensure => file,
    source => "puppet:///modules/puppy_run/athena.txt",
  }

}
