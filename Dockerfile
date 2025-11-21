FROM webhippie/alpine:latest@sha256:ec2ad56f31c4e87dc839859394660a7799dec812f7509e404b998d4d6cf9b60d
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
