#!/bin/sh
apk update
apk upgrade
apk add --update --progress curl
curl -sSL  \
  http://dl-3.alpinelinux.org/alpine/edge/testing/x86_64/stress-1.0.4-r0.apk \
  -o /var/cache/apk/stress.apk  \
apk add --allow-untrusted --update /var/cache/apk/stress.apk
rm -rf /var/cache/apk/*
