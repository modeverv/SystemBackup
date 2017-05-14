#! /bin/bash

PID=`ps x | grep "backuprsystemsync" | grep -v grep | awk '{ print $1 }'`
echo $PID
if [ x"$PID" = x"" ]; then
    /var/smb/backupscript/backuprsystemsync
else
    echo "backuprsystemsyncは実行中のため終了します"
fi


