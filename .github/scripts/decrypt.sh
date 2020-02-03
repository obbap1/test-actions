#!/bin/sh

# Change pbaba.pem to the name of your pem file
# Change pbaba.pem.gpg to the name of your gpg file or pass it as an environmental
# variable with the name ENC_FILE

# LARGE_SECRET_PASSPHRASE is the passphrase to decrypt the pem file.

mkdir $HOME/secrets

gpg --quiet --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" \
--output $HOME/secrets/pbaba.pem ${ENC_FILE:- pbaba.pem.gpg}