#!/bin/sh -eu

ENTRYPOINT_LOCK_FILE=/tmp/.mdsdtools_init_xvfb.lock

if [ ! -f "$ENTRYPOINT_LOCK_FILE" ]; then
	# start virtual frame buffer
	Xvfb :$DISPLAYNUM -screen $SCREENNUM 1920x1080x24 > /dev/null 2>&1 &
	touch "$ENTRYPOINT_LOCK_FILE"
fi

