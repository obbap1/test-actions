#!/bin/sh

set -eu

scp -i $HOME/secrets/pbaba.pem $source $username@$host:~/

echo "I am done baby!"