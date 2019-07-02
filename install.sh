#!/bin/sh
cd /xray-16/bin
mkdir /game/bin-linux
make DESTDIR=/game/bin-linux install
