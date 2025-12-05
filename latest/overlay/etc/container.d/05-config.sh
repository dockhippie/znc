#!/usr/bin/env bash

if [[ ! -f /var/lib/znc/configs/znc.conf ]]; then
    echo "> writing znc config"
    gomplate -V \
        -o /var/lib/znc/configs/znc.conf \
        -f /etc/templates/znc.conf.tmpl || exit 1
fi

true
