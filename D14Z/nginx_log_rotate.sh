#! /bin/bash
## 假设nginx的日志存放路径为/data/logs/
d=`date -d "-1 day" +%Y%m%d` 
logdir="/data/logs"
nginx_pid="/usr/local/nginx/logs/nginx.pid"
cd $logdir
for log in `ls *.log`
do
    mv $log $log-$d
done
/bin/kill -HUP `cat $nginx_pid`


##add cron
#0 0 * * * /bin/bash /usr/local/sbin/nginx_log_rotate.sh
