FROM webhippie/alpine:latest@sha256:153cead8447ed8da4f0dafe7a839bac3c6375afb44a0be3ccb600f1a9727252c
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
