#!/bin/sh

# pass souce, username, target and host as environmental variables

set -eu

scp -i $HOME/secrets/pbaba.pem $source $username@$host

echo "I am done baby!"