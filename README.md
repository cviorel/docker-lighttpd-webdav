# cviorel/docker-nginx-webdav

Tiny image running WebDAV on top of [alpinelinux/docker-alpine](https://github.com/alpinelinux/docker-alpine) Linux and [lighttpd](https://www.lighttpd.net/).

## Usage

```shell
docker run -d \
-p 8008:80 \
-v /mnt/iso:/webdav \
-e USERNAME=webdav -e PASSWORD=webdav \
cviorel/docker-lighttpd-webdav
```

## License

[MIT License](LICENSE)

## Author Information

[Viorel Ciucu](https://vciconsulting.net/)
