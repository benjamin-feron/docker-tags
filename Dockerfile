FROM debian:bullseye-20220125-slim
RUN apt-get update && apt-get install -y curl jq && rm -rf /var/lib/apt/lists/*
COPY docker-tags docker-tags
ENTRYPOINT ["/docker-tags"]
