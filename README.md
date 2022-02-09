# docker-tags

![logo](images/docker-tags.png "docker-tags logo")

Retrieve tag list of a Docker repository.

## Repository

[https://github.com/benjamin-feron/docker-tags](https://github.com/benjamin-feron/docker-tags)

## Installation
```bash
$ git clone https://github.com/benjamin-feron/docker-tags.git
$ cd docker-tags
$ sudo ln -s $PWD/docker-tags /usr/bin/docker-tags
```

## Usage

```bash
$ docker-tags <REPOSITORY>
```

## Usage with Docker

```bash
$ docker run --rm benjaminferon/docker-tags <REPOSITORY>
```

## All options

```
Usage: docker-tags <REPOSITORY>

  REPOSITORY:          Name of repository.
  
  Options:
    -h, --hide-pages   Don't show pagination.
    --help             Show help.

  Examples:            docker-tags php
                       docker-tags ubuntu/bind9
```