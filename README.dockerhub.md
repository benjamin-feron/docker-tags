# docker-tags

![logo](https://github.com/benjamin-feron/docker-tags/raw/main/images/docker-tags.png "docker-tags logo")

Retrieve tag list of a Docker repository

## Repository

[https://github.com/benjamin-feron/docker-tags](https://github.com/benjamin-feron/docker-tags)

## Usage

```bash
docker run benjaminferon/docker-tags [OPTIONS] <REPOSITORY>
```

For facility, you can create alias.
For example, to create an alias for bash :

```bash
echo 'alias docker-tags="docker run --rm benjaminferon/docker-tags"' >> ~/.bashrc
```

## Options

```text
OPTIONS:
  -f, --filter=PATTERN
         Filter tags names.
  -h, --hide-pagination
         Don't show pagination.
  -p, --page-size
         Number of tags per page. Due to Docker registry API limitation, maximum value is 100.
         Default is 100.
  -c, --page-count
         Number of pages to retrieve.
         Default is unlimited.
  -s, --sort=WORD
         Sort tags by WORD. Possible values for WORD are 'last_updated', '-last_updated', 'name' or '-name'.
         Default is 'last_updated'.
  --help
         Show help
```
