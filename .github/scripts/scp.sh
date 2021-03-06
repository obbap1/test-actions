#!/bin/sh

# pass souce, username, target and host as environmental variables

set -eu

sudo chmod 600 ~/secrets/pbaba.pem

sudo chmod 644 ~/.ssh/known_hosts

sudo chmod 755 ~/.ssh

sudo chmod a=rw /dev/tty

scp -o StrictHostKeyChecking=no -v -P $port -i $HOME/secrets/pbaba.pem $source $username@$host:$target

echo "I am done baby!!!!" 