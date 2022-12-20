#!/bin/sh

echo y | psftp -pw $FTP_PASS $FTP_USER@sftp -b /app/sftp_connect/download.sh > /app/sftp_connect/log.txt
