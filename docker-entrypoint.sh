#!/usr/bin/env sh
set -eu

# install SIGIL
curl -sL ${SIGIL_URL} | tar -zxC /usr/local/bin

# template config
sigil -p -f /nginx.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"