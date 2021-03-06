Jumeaux Toolbox
===============

Jumeaux Toolbox provides you local environments which includes

* [Jumeaux](https://github.com/tadashi-aikawa/jumeaux)
* [Miroir](https://github.com/tadashi-aikawa/miroir)
* [Storage](https://github.com/localstack/localstack) (AWS emulates by Localstack)
* Dummy API server (can control responsies you want)

`vagrant up --provision` is the only command to constitute the above!
 

## System structure

### Original (Jumeaux and Miroir)

[![](https://cacoo.com/diagrams/lhxa5WXGey4z5MMD-DD644.png)](https://cacoo.com/diagrams/lhxa5WXGey4z5MMD#DD644)

### Jumeaux Toolbox

[![](https://cacoo.com/diagrams/lhxa5WXGey4z5MMD-89A6C.png)](https://cacoo.com/diagrams/lhxa5WXGey4z5MMD#89A6C)


## Requirements

You need to be installed ...

* Vagrant
* VirtualBox

The version which I confirmed ...

* Vagrant: 2.0.0
* VirtualBox: 5.1.30 r118389


## Setup

Only you need to exec one command if you installed Vagrant and VirtualBox!

```
$ vagrant up --provision
```


## Miroir

You can access to http://localhost:8888/miroir and login with LocalStack mode on.

After login successed, you need to input configurations as following.

* DynamoDB table name
  - miroir
* Bucket name
  - mamansoft-miroir


## Jumeaux

You can also use jumeaux with no preparation if you are login with ssh.

```
$ ssh ${vagrant-machine}
```

Execute jumeaux.

```
$ jumeaux run --config /jumeaux/common/config.yml --config /jumeaux/simple/config.yml /jumeaux/simple/requests
```

Umm... too long...  
Don't worry! You can use shorthand as following!

```
$ /vagrant/jumeaux simple
```

If you create files under `/jumeaux`, you can access them by http request like `http://localhost/api/...`.

