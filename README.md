# Simple and light WEBDAV with alpine+nginx

## Example of use

```console
$ docker run -p 80:80 -e PUID=1000 -e PGID=1000 -e TZ=Europe/Paris -v /your/directory:/data simple-webdav
```

You need to use reverse-proxy (for example Traefik) for TLS and/or auth.

## Configuration env var

- PUID: User ID - if your filesystem use 1000, set 1000 ! default to nginx
- PGID: Group ID ; default empty
- DAV_METHODS: off or a list of methods (as nginx conf, so space separated) ; default to all methods

To do a readonly webdav :
- Put DAV_METHODS to off
- mount your volume to :ro
- use default user (nginx) for example if yours files are yours (100x)

## Notes

This repository is a fork of https://github.com/jbbodart/alpine-nginx-webdav ; But 90% has changed (haha)
