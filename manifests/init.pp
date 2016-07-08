class puppy_run (
  $ensure  = 'happy',
  $command = 'sit!',
){
  $kennel = '/opt/pups'
  
  file { $kennel:
    ensure => directory,
  }

  file { "${kennel}/athena.txt":
    ensure => file,
    source => "puppet:///modules/puppy_run/athena.txt",
  }

  puppy_run::puppy { 'athena': 
    ensure  => $ensure,
    command => $command,
  }

}
