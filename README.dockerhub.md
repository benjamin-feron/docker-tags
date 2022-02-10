# docker-tags

![logo](https://github.com/benjamin-feron/docker-tags/raw/main/images/docker-tags.png "docker-tags logo")

Retrieve tag list of a Docker repository.

## Repository

[https://github.com/benjamin-feron/docker-tags](https://github.com/benjamin-feron/docker-tags)

## Usage

```bash
docker run benjaminferon/docker-tags <REPOSITORY>
```

## All options

```text
  OPTIONS:
    -h, --hide-pages
           Don't show pagination.
    -s, --sort=WORD
            Sort tags by WORD. Possible values for WORD are 'last_updated' or 'name'.
            When sort by name, order is alphabetically inversed to show highest versions first.
            Default is 'last_updated'.
    --help
            Show help
```
