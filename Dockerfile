FROM webhippie/alpine:latest@sha256:4211297043fa71f4cad1e67cdcd81f611aed2ad0250217e918e55a5bb7dc2d74
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
