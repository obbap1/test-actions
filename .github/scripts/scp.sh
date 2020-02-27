#!/bin/sh

# pass souce, username, target and host as environmental variables

set -eu

scp -o StrictHostKeyChecking=no -v -P $port -i $HOME/secrets/pbaba.pem $source $username@$host:$target

echo "I am done baby!!!!"