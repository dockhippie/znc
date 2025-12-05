#!/usr/bin/env bash

if [[ "${ZNC_SKIP_CHOWN}" != "true" ]]; then
    echo "> chown data directory"
    find /var/lib/znc \( \! -user znc -o \! -group znc \) -print0 | xargs -0 -r chown znc:znc
fi

true
