Docker image for mariadb client tools.

To execute mariadb command line tools inside docker.

Debian (buster-slim) based image, with mariadb-tools installed.

`mariadb` as entrypoint, so it can be used as direct replacement for mariadb command line tool.

```console
$ docker run --rm --interactive --tty jorritwehelp/mariadb-client --host db --user root -p
```
