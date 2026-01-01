#!/usr/bin/env bash

declare -x ZNC_WEB_IPV4
: "${ZNC_WEB_IPV4:="true"}"

declare -x ZNC_WEB_IPV6
: "${ZNC_WEB_IPV6:="true"}"

declare -x ZNC_WEB_SSL
: "${ZNC_WEB_SSL:="false"}"

declare -x ZNC_IRC_IPV4
: "${ZNC_IRC_IPV4:="true"}"

declare -x ZNC_IRC_IPV6
: "${ZNC_IRC_IPV6:="true"}"

declare -x ZNC_IRC_SSL
: "${ZNC_IRC_SSL:="false"}"

declare -x ZNC_USERNAME
: "${ZNC_USERNAME:="admin"}"

declare -x ZNC_PASSWORD
: "${ZNC_PASSWORD:="admin"}"

declare -x ZNC_NICK
: "${ZNC_NICK:="admin"}"

declare -x ZNC_ALTNICK
: "${ZNC_ALTNICK:="admin_"}"

declare -x ZNC_IDENT
: "${ZNC_IDENT:="admin"}"

declare -x ZNC_REALNAME
: "${ZNC_REALNAME:="Admin"}"

declare -x ZNC_SKIP_CHOWN
: "${ZNC_SKIP_CHOWN:="false"}"

declare -x ZNC_HEALTHCHECK_URL
: "${ZNC_HEALTHCHECK_URL:="http://localhost:8080/"}"

declare -x ZNC_HEALTHCHECK_CODE
: "${ZNC_HEALTHCHECK_CODE:="200"}"
