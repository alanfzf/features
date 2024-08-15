#!/bin/sh
set -e

# BAT_VERSION=$(curl -s "https://api.github.com/repos/sharkdp/bat/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
# ARCH="$(uname -m)"

# if [ "$ARCH" != "x86_64" ] && [ "$ARCH" != "aarch64" ]; then
#   echo "Unsupported architecture"
#   exit 1
# fi

# BASE_URL="https://github.com/sharkdp/bat/releases/latest/download/bat-v${BAT_VERSION}-${ARCH}-unknown-linux-gnu.tar.gz"

# curl -sL ${BASE_URL} | tar --strip-components=1 -xz
# install bat /usr/local/bin

apt-get update && apt-get -y install bat
ln -s /usr/bin/batcat /usr/local/bin/bat
