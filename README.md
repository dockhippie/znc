# Znc

[![](https://images.microbadger.com/badges/image/webhippie/znc.svg)](https://microbadger.com/images/webhippie/znc "Get your own image badge on microbadger.com")

These are docker images for [ZNC](http://wiki.znc.in/ZNC) running on an [Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](https://github.com/dockhippie/znc/tree/master) available as ```webhippie/znc:latest``` at [Docker Hub](https://registry.hub.docker.com/u/webhippie/znc/)


## Volumes

* /var/lib/znc


## Ports

* 8080
* 6667


## Available environment variables

```bash
ENV ZNC_WEB_IPV4 true
ENV ZNC_WEB_IPV6 true
ENV ZNC_WEB_SSL false
ENV ZNC_IRC_IPV4 true
ENV ZNC_IRC_IPV6 true
ENV ZNC_IRC_SSL false
ENV ZNC_USERNAME admin
ENV ZNC_PASSWORD admin
ENV ZNC_NICK admin
ENV ZNC_ALTNICK admin_
ENV ZNC_IDENT admin
ENV ZNC_REALNAME Admin
```


## Inherited environment variables

```bash
ENV CRON_ENABLED false
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015-2017 Thomas Boerger <http://www.webhippie.de>
```
