Jumeaux Toolbox
===============

Jumeaux Toolbox provides you local environments which includes

* [Jumeaux](https://github.com/tadashi-aikawa/jumeaux)
* [Jumeaux Viewer](https://github.com/tadashi-aikawa/jumeaux-viewer)
* [Storage](https://github.com/localstack/localstack) (AWS emulates by Localstack)
* Dummy API server (can control responsies you want)

`vagrant up --provision` is the only command to constitute the above!
 

## System structure

### Original (Jumeaux and Jumeaux Viewer)

[![](https://cacoo.com/diagrams/lhxa5WXGey4z5MMD-DD644.png)](https://cacoo.com/diagrams/lhxa5WXGey4z5MMD#DD644)

### Jumeaux Toolbox

[![](https://cacoo.com/diagrams/lhxa5WXGey4z5MMD-89A6C.png)](https://cacoo.com/diagrams/lhxa5WXGey4z5MMD#89A6C)


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
$ jumeaux --config /jumeaux/simple/config.yml /jumeaux/simple/requests

# This is same as above
$ /vagrant/jumeaux simple
```


If you create files under `/jumeaux`, you can access them by http request like `http://localhost/api/...`.

