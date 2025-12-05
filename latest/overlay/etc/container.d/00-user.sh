#!/usr/bin/env bash

if [[ ! "$(id -g znc)" =~ "${PGID}" ]]; then
    echo "> enforcing group id"
    groupmod -o -g ${PGID} znc
fi

if [[ ! "$(id -u znc)" =~ "${PGID}" ]]; then
    echo "> enforcing user id"
    usermod -o -u ${PUID} znc
fi

true
