#!/bin/bash

cd /root/build-area/xrdp
git checkout devel
./bootstrap
./configure
make 
make DESTDIR=/root/project install
