#!/bin/bash

#TZ="America/Los_Angeles"
TZPATH="/usr/share/zoneinfo/$TZ"

if [ ! -e $TZPATH ]; then
  TZ="Etc/UTC"
fi
TZPATH="/usr/share/zoneinfo/$TZ"
ln -fs $TZPATH /etc/localtime
dpkg-reconfigure -f noninteractive tzdata

motion -c /etc/motion/motion.conf
