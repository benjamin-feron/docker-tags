# docker-tags

![logo](https://github.com/benjamin-feron/docker-tags/raw/main/images/docker-tags.png "docker-tags logo")

Retrieve tag list of a Docker repository.

## Repository

[https://github.com/benjamin-feron/docker-tags](https://github.com/benjamin-feron/docker-tags)

## Usage

```bash
docker run benjaminferon/docker-tags [OPTIONS] <REPOSITORY>
```

## Options

```text
OPTIONS:
  -h, --hide-pagination
         Don't show pagination.
  -p, --page-size
         Number of tags per page. Due to Docker registry API limitation, maximum value is 100.
         Default is 100.
  -s, --sort=WORD
         Sort tags by WORD. Possible values for WORD are 'last_updated' or 'name'.
         When sort by name, order is alphabetically inversed to show highest version numbers first.
         Default is 'last_updated'.
  --help
         Show help
```
