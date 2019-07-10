#!/bin/bash

TIME=`date +%Y%m%d`

mysqldump -uroot -p"vmfort12!@" vmfort < /tmp/Backup_$TIME.sql | grep "Dumping completed" >> /tmp/DB-Sync.log

