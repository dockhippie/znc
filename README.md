# znc

[![Docker Build](https://github.com/dockhippie/znc/actions/workflows/docker.yml/badge.svg)](https://github.com/dockhippie/znc/actions/workflows/docker.yml) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/znc)

These are docker images for [ZNC][upstream] running on our [Alpine Linux image][parent].

## Versions

For the available versions please look at [Docker Hub][dockerhub] or
[Quay][quayio] or check the existing folders within the
[GitHub repository][github].

## Volumes

*  /var/lib/znc

## Ports

*  8080
*  6667

## Available environment variables

```console
ZNC_ALTNICK = admin_
ZNC_HEALTHCHECK_CODE = 200
ZNC_HEALTHCHECK_URL = http://localhost:8080/
ZNC_IDENT = admin
ZNC_IRC_IPV4 = true
ZNC_IRC_IPV6 = true
ZNC_IRC_SSL = false
ZNC_NICK = admin
ZNC_PASSWORD = admin
ZNC_REALNAME = Admin
ZNC_SKIP_CHOWN = false
ZNC_USERNAME = admin
ZNC_WEB_IPV4 = true
ZNC_WEB_IPV6 = true
ZNC_WEB_SSL = false
```

## Inherited environment variables

*  [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```

[upstream]: http://wiki.znc.in/ZNC
[parent]: https://github.com/dockhippie/alpine
[dockerhub]: https://hub.docker.com/r/webhippie/znc/tags
[quayio]: https://quay.io/repository/webhippie/znc?tab=tags
[github]: https://github.com/dockhippie/znc
