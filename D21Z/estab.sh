#!/bin/bash
##获取80端口并发连接数
netstat -ant |grep ':80 ' |grep ESTABLISHED|wc –l

