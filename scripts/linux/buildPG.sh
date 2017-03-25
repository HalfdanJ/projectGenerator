#!/bin/bash
set -e
cd ..
git clone --depth=1 https://github.com/openframeworks/openFrameworks
mv projectGenerator openFrameworks/apps/

cd openFrameworks

sudo ./scripts/linux/ubuntu/install_dependencies.sh -y;

scripts/linux/download_libs.sh

export LC_ALL=C

OF_ROOT=./
make Release -C ${OF_ROOT}/apps/projectGenerator/commandLine
