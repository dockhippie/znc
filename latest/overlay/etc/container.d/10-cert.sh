#!/usr/bin/env bash

if [[ ! -f /var/lib/znc/znc.pem ]]; then
    echo "> writing znc cert"
    znc \
        -d /var/lib/znc \
        --makepem || exit 1
fi

true
