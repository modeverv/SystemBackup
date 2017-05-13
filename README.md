# Server backup script
## make env file
load in bash script like bellow

    MAILADDRESS=test@example.com

## cron
as normal user

     0  3    *   *   *     /path/to/bk/backupkicker.sh >> /path/to/log/rsync.log 2>&1

as root user

     15 0    *   *   *     /path/to/bk/backupkickersystem.sh >> /path/to/log/rsyncsystem.log 2>&1

