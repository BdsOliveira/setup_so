#!/bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y;
sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa

sudo apt-get install libc6:amd64 libstdc++6:amd64 lib32z1 libbz2-1.0:amd64 -y

sudo apt-get install clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev -y

# Download and install Flutter
wget -O flutter_linux_stable.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.29.2-stable.tar.xz

mkdir -p ~/development

tar -xf flutter_linux_stable.tar.xz -C ~/development/

rm -rf flutter_linux_stable.tar.xz

echo 'export PATH="$PATH:$HOME/development/flutter/bin:$PATH"' >> ~/.bashrc

source ~/.bashrc

flutter doctor -v