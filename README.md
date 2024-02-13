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
Usage: docker-tags [OPTIONS] <IMAGE>
  Retrieve tag list of a Docker image.

IMAGE: Name of Docker image.

OPTIONS:
  -f, --filter
         Filter tags names.
  -p, --pagination
         Show pagination.
  -P, --page-size
         Number of tags per page. Due to Docker registry API limitation, maximum value is 100.
         Default is 100.
  -q, --quiet
         Does not show informations.
  -c, --page-count
         Number of pages to retrieve.
         Default is unlimited.
  -s, --sort=WORD
         Sort tags by WORD. Possible values for WORD are 'last_updated', '-last_updated', 'name', '-name', 'version' or '-version'.
         It's almost same as '--sort name' but the sorting is adapted to version formats.
         For exemple, with these tags on a Docker image : 1.5.7, 1.5.8, 1.5.76, 1.5.81
         Result with '--sort name' :
         1.5.81
         1.5.8
         1.5.76
         1.5.7
         -> Versions numbers are not corretly sorted.
         Result with '-v or --sort-by-version or --sort=version' :
         1.5.81
         1.5.76
         1.5.8
         1.5.7
         -> Sort is correct.
         Note that when sort is 'version' or '-version', operation is slower cause it is necessary to retrieve tags before to sort them. 300 tags are retrived so there is 3 queries on the API (The API page_size is limited to 100).
         Incompatible with '-p'.
         Default is 'last_updated'.
  -v, --sort-by-version
         Sort tags by version from highest to lowest.
         Is equivalent to : '--sort version'.
         See '--sort'.
         Incompatible with '-p'.
  -h, --help
         Show help.

Examples: docker-tags ubuntu/bind9
          docker-tags -pc 2 -s name php
```