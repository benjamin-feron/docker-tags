# docker-tags

![logo](https://github.com/benjamin-feron/docker-tags/raw/main/images/docker-tags.png "docker-tags logo")

Retrieve tag list of a Docker repository.

## Repository

[https://github.com/benjamin-feron/docker-tags](https://github.com/benjamin-feron/docker-tags)

## Installation

```bash
git clone https://github.com/benjamin-feron/docker-tags.git
cd docker-tags
sudo ln -s $PWD/docker-tags /usr/bin/docker-tags
```

## Usage

```bash
docker-tags <REPOSITORY>
```

## Usage with Docker

```bash
docker run --rm benjaminferon/docker-tags <REPOSITORY>
```

## All options

```text
Usage: docker-tags <REPOSITORY>

  REPOSITORY:          Name of repository.
  
  Options:
    -h, --hide-pages   Don't show pagination.
    -s, --sort         Show last updated tags first.
    --help             Show help.

  Examples:            docker-tags -h -s php
                       docker-tags ubuntu/bind9
```
