FROM webhippie/alpine:latest@sha256:139eec0b189638096d65847ecdb00e6a2260bf785cb0f93a7eaa012e6b075789
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/var/lib/znc"]

EXPOSE 8080 6667

WORKDIR /root
CMD ["/bin/s6-svscan", "/etc/s6"]

RUN apk update && \
  mkdir -p \
    /home/znc && \
  groupadd \
    -g 1000 \
    znc && \
  useradd \
    -u 1000 \
    -d /home/znc \
    -g znc \
    -s /bin/bash \
    -m \
    znc && \
  apk add \
    znc \
    znc-extra && \
  rm -rf \
    /var/cache/apk/*

ADD rootfs /
