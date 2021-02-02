#!/bin/sh

if command -v apt &> /dev/null
then
    set -e
    echo Installing dependencies using apt
    apt-get update
    apt-get install -y --no-install-recommends --no-install-suggests libgtk-3-0
    rm -rf /var/lib/apt/lists/*
    exit
fi

if command -v microdnf &> /dev/null
then
    set -e
    echo Installing dependencies using microdnf
    microdnf update
    microdnf install gtk3
    exit
fi

echo "No supported package management found."
exit 1
