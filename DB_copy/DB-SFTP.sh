#!/bin/bash
#해당 스크립트 실행 전 ssh-rsa 값을 서버에 복사해야 됨
PATH=/usr/lib64/qt-3.3/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/root/bin
#환경변수 지정

#변수지정
REMOTE_FTP_ADDR="192.168.0.20"
REMOTE_USER="root"
REMOTE_DOWNLOAD_PATH="/backup/db-backup"
LOCAL_DOWNLOAD_PATH="/tmp"

#구동 핵심 소스
sftp -oPort=65442 $REMOTE_USER@$REMOTE_FTP_ADDR << EOF >> /tmp/DB-Down.log
cd $REMOTE_DOWNLOAD_PATH
lcd $LOCAL_DOWNLOAD_PATH
get *.sql
quit
EOF

