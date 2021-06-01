Docker image for mariadb client tools.

To execute mariadb command line tools inside docker.

Debian (buster-slim) based image, with mariadb-tools installed.

`mariadb` as entrypoint, so it can be used as direct replacement for mariadb command line tool.

```console
docker run --rm --interactive --tty ghcr.io/wehelpen/mariadb-client --host db --user root -p
```

Other tools are available, like mariaDB/mysql tools like mysqldump, mysqladmin and innotop.
Also (de)compression tools for gzip, bzip2 and xz.

For example:

```console
docker run --rm --interactive --tty --entrypoint mysqladmin ghcr.io/wehelpen/mariadb-client ping --host db
```
