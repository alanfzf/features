#!/bin/sh
set -e

ARCH="$(uname -m)"
BASE_TAR=""

if [ "$ARCH" = "x86_64" ]; then
  BASE_TAR="nvim-linux64"
elif [ "$ARCH" = "arm64" ]; then
  BASE_TAR="nvim-macos-arm64"
else
  echo "Unsupported architecture"
  exit 1
fi

curl -L "https://github.com/neovim/neovim/releases/latest/download/${BASE_TAR}" | tar xzf - -C /opt/
ln -sf "/opt/${BASE_TAR}/bin/nvim" "/usr/local/bin/nvim"
