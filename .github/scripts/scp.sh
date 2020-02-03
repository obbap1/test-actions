#!/bin/sh

set -eu

scp -i $HOME/secrets/pbaba.pem $SOURCE $USERNAME@$HOST:${TARGET:-~/}

echo "I am done baby!"