define puppy_run::puppy(
  String $ensure,
  String $command,
){ 

  notify { $name:
    message => template("puppet_run/${name}.erb")
  }
}
