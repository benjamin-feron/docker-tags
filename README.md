# docker-tags

docker-tags is an utility that offer a simple way to retrieve tag list of a Docker repository.

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
$ docker-tags <REPOSITORY_NAME>
```

## Docker usage

```bash
$ docker run --rm benjaminferon/docker-tags <REPOSITORY_NAME>
```