Concrete5 On Docker
====

## Description
This repository provides a script that can automatically perform a set of docker settings to run concrete 5 on docker.

Applications and middleware running on docker container are as follows.

- concrete5 (newest version)
- Nginx1.11.6
- MySQL5.7.16

## Requirement
- macOS or LinuxOS
- docker
- docker-compose

## Install

To install, execute the following code
```
sh ./script/init.sh
```

You can specify the version of concrete 5 using arguments.

```
sh ./script/init.sh 8.1.0
```


## Usage
#### Start or Restart docker container

```
sh ./script/start.sh
```

#### Stop docker container

```
sh ./script/stop.sh
```

#### ssh login Application container(c5_app)

```
sh ./script/enter_app.sh
```
