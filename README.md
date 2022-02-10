# docker-tags

![logo](https://github.com/benjamin-feron/docker-tags/raw/main/images/docker-tags.png "docker-tags logo")

Retrieve tag list of a Docker repository

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

## Usage with Docker image

```bash
docker run --rm benjaminferon/docker-tags <REPOSITORY>
```

## Options

```text
Usage: docker-tags [OPTIONS] <REPOSITORY>
  Retrieve tag list of a Docker repository.

REPOSITORY: Name of repository.

OPTIONS:
  -f, --filter=PATTERN
         Filter tags. Same syntax as grep -E.
  -h, --hide-pagination
         Don't show pagination.
  -p, --page-size
         Number of tags per page. Due to Docker registry API limitation, maximum value is 100.
         Default is 100.
  -c, --page-count
         Number of pages to retrieve.
         Default is unlimited.
  -s, --sort=WORD
         Sort tags by WORD. Possible values for WORD are 'last_updated' or 'name'.
         When sort by name, order is alphabetically inversed to show highest version numbers first.
         Default is 'last_updated'.
  --help
         Show help.

Examples: docker-tags ubuntu/bind9
          docker-tags -hs name php
```
