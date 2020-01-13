#!/usr/bin/env bash

echo downloading/updating rpi-clone script
mkdir -p ~/src
cd ~/src
(git clone https://github.com/billw2/rpi-clone.git >/dev/null 2>&1 && cd rpi-clone) || (cd rpi-clone && git pull)
echo showing mounted disks:
df |grep -v 'tmpfs'
