#! /bin/bash
echo 1 > /proc/sys/net/ipv4/ip_forward
ipv=/usr/sbin/ipvsadm
vip=192.168.188.110
rs1=192.168.188.129
rs2=192.168.188.127
#注意这里的网卡名字
ifconfig ens33:2 $vip broadcast $vip netmask 255.255.255.255 up
route add -host $vip dev ens33:2
$ipv -C
$ipv -A -t $vip:80 -s wrr
$ipv -a -t $vip:80 -r $rs1:80 -g -w 1
$ipv -a -t $vip:80 -r $rs2:80 -g -w 1
