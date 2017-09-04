jumeaux-toolbox
===============

## System structure

Todo


## Requirements

You need to be installed ...

* Vagrant
* VirtualBox

The version which I confirmed ...

* Vagrant: 1.9.5
* VirtualBox: 5.1.22 r115126


## Setup

Only you need to exec one command if you installed Vagrant and VirtualBox!

```
$ vagrant up --provision
```


## Jumeaux Viewer

You can access to http://localhost:8888.


## Jumeaux

You can also use jumeaux with no preparation if you are login with ssh.

```
$ ssh ${vagrant-machine}

# For one example...
$ jumeaux --config /jumeaux/simple/config.yml /jumeaux/simple/request.log
```

If you create files under `/jumeaux`, you can access them by http request like `http://localhost/api/...`.

