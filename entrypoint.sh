#!/bin/sh -eu

/init.sh
exec /usr/local/bin/mvn-entrypoint.sh "$@"
