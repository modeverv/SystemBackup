#! /bin/bash

PID=`ps x | grep "backuprsync" | grep -v grep | awk '{ print $1 }'`
echo $PID
if [ x"$PID" = x"" ]; then
    echo "backupスタート"
    /var/smb/backupscript/backuprsync
else
    echo "backuprsyncは実行中のため終了します"
fi
