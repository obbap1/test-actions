#!/bin/sh

# Change pbaba.pem to the name of your pem file
# Change pbaba.pem.gpg to the name of your gpg file or pass it as an environmental
# variable with the name ENC_FILE

# LARGE_SECRET_PASSPHRASE is the passphrase to decrypt the pem file.

mkdir $HOME/secrets

count=`ls -1 *.gpg 2>/dev/null | wc -l`
if [ $count != 0 ]
then
    nameOfGpg=`echo *.gpg | awk '{print $1}'`
    echo "${nameofGpg}, file has been found"
    filename="${nameOfGpg%.*}"
    echo "${filename#**.} --- filename" 
    if [ "${filename#**.}" == "pem" ]
    then
        echo 'Valid pem file! Decrypting...'
    else
        echo 'Invalid pem file. Use naming system <filename>.pem.gpg'
    fi
else
    echo 'Invalid gpg file. Use naming system <filename>.pem.gpg'
fi

gpg --quiet --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" \
--output $HOME/secrets/$filename $nameOfGpg