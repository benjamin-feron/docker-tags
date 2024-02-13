FROM debian:bookworm-20240211-slim
LABEL maintainer="benjamin.feron@gmail.com"

RUN apt-get update && apt-get install -y curl jq && rm -rf /var/lib/apt/lists/*
COPY docker-tags docker-tags
ENTRYPOINT ["/docker-tags"]