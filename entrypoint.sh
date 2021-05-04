#!/bin/sh

Xvfb :$DISPLAYNUM -screen $SCREENNUM 1920x1080x24 > /dev/null 2>&1 &

exec /usr/local/bin/mvn-entrypoint.sh "$@"
