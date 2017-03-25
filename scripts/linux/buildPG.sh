#!/bin/bash
set -e
cd ..
git clone --depth=1 https://github.com/openframeworks/openFrameworks
mv projectGenerator openFrameworks/apps/

cd openFrameworks

sudo ./scripts/linux/ubuntu/install_dependencies.sh -y;

scripts/linux/download_libs.sh
scripts/linux/compilePG.sh
