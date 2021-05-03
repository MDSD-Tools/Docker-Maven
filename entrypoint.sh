#!/bin/sh

export DISPLAY=':99.0'
Xvfb :99 -screen 0 1920x1080x24 > /dev/null 2>&1 &

exec /usr/local/bin/mvn-entrypoint.sh "$@"
