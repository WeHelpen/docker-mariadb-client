FROM debian:buster-20221205-slim

RUN apt-get update && apt-get install --no-install-recommends -y mariadb-client zutils bzip2 lzip xz-utils \
    && rm -rf /var/lib/apt/lists/* && rm -rf /var/log/*
ARG UID=1001
RUN groupadd --gid $UID user && useradd --uid $UID --gid user --no-log-init --no-create-home --shell /bin/false user
USER user

ENTRYPOINT ["mariadb"]
CMD ["--help"]
