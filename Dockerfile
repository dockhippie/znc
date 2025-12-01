FROM webhippie/alpine:latest@sha256:32cb1b1fbfa480ac1f1b8b749b4a403d5a31c3ea06da27c4ed06958e68e72241
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
