# docker-tags

![logo](https://github.com/benjamin-feron/docker-tags/raw/main/images/docker-tags.png "docker-tags logo")

Retrieve tag list of a Docker repository.

## Repository

[https://github.com/benjamin-feron/docker-tags](https://github.com/benjamin-feron/docker-tags)

## Usage

```bash
$ docker run benjaminferon/docker-tags <REPOSITORY>
```

## All options

```text
  Options:
    -h, --hide-pages   Don't show pagination.
    --help             Show help.

  Examples:            docker run --rm benjaminferon/docker-tags php
                       docker run --rm benjaminferon/docker-tags -h ubuntu/bind9
```
