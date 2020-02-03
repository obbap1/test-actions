#!/bin/sh

# pass souce, username, target and host as environmental variables

set -eu

rm $HOME/.ssh/known_hosts

scp -P $port -i $HOME/secrets/pbaba.pem $source $username@$host:$target

echo "I am done baby!!!"