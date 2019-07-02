#!/bin/sh
cd /
git clone https://github.com/OpenXRay/xray-16.git --recursive
cd /xray-16
git reset --hard $1
mkdir bin
cd bin
cmake ..
make -j$(nproc)
/install.sh
