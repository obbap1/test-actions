#!/bin/sh

set -eu

scp -i $HOME/secrets/pbaba.pem $source $username@$host:${target:-~/}

echo "I am done baby!"