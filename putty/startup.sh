#!/bin/sh

if [ $1 = "sftp" ]; then
  echo y | psftp -pw $FTP_PASS $FTP_USER@sftp -b download > log.txt
  echo file has download;
elif [ $1 = "gpg" ]; then
  gpg --batch --gen-key demo
  echo gpg has created;
elif [ $1 = "encrypt" ]; then
  gpg --output testing.gpg --encrypt --recipient maulana@example testing.txt
  echo file has encrypt;
elif [ $1 = "decrypt" ]; then
  echo $GPG_PASSPHRASE | gpg --output testing.txt --decrypt testing.gpg
  echo file has decrypt;
else
  echo did not see argument $1;
fi
