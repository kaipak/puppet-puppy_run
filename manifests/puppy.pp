define puppy_run::puppy(
  String $ensure,
  String $command,
){ 

  notify { $name:
    message => template("puppy_run/${name}.erb"),
  }

}
