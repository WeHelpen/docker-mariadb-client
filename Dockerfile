FROM debian:buster-slim

RUN apt-get update && apt-get install -y mariadb-client && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["mariadb"]
CMD ["--help"]
