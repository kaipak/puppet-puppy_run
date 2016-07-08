define puppy_run::puppy(
  String $ensure,
  String $command,
){ 

  exec { "/bin/cat /opt/pups/${name}.txt": }

}
