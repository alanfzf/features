#!/bin/sh
set -e

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | \
  sh -s -- --bin-dir=/usr/local/bin --man-dir=/usr/local/share/man
