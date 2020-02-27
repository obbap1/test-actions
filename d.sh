#!/bin/sh

count=`ls -1 *.gpg 2>/dev/null | wc -l`
if [ $count != 0 ]
then
    nameOfGpg=`echo *.gpg | awk '{print $1}'`
    filename="${nameOfGpg%.*}"
    echo "${filename#**.}" 
    if [ "${filename#**.}" == "pem" ]
    then
        echo 'Valid pem file!'
    else
        echo 'Invalid pem file. Use naming system <filename>.pem.gpg'
    fi
else
    echo 'Invalid gpg file. Use naming system <filename>.pem.gpg'
fi