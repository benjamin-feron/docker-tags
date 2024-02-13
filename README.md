# docker-tags

![logo](https://github.com/benjamin-feron/docker-tags/raw/main/images/docker-tags.png "docker-tags logo")

Retrieve tag list of a Docker repository with sort options and others

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

For facility, you can create alias.
For example, to create an alias for bash :

```bash
echo 'alias docker-tags="docker run --rm benjaminferon/docker-tags"' >> ~/.bashrc
```

## Options

```text
Usage: docker-tags [OPTIONS] <REPOSITORY>
  Retrieve tag list of a Docker repository.

REPOSITORY: Name of repository.

OPTIONS:
  -f, --filter=FILTER
         Filter tags names.
  -p, --pagination
         Show pagination.
  -P, --page-size
         Number of tags per page. Due to Docker registry API limitation, maximum value is 100.
         Default is 100.
  -c, --page-count
         Number of pages to retrieve.
         Default is unlimited.
  -s, --sort=WORD
         Sort tags by WORD. Possible values for WORD are 'last_updated', '-last_updated', 'name', '-name', 'version' or '-version'.
         Default is 'last_updated'.
  -h, --help
         Show help.

Examples: docker-tags ubuntu/bind9
          docker-tags -pc 2 -s name php
```