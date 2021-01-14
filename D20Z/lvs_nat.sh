#! /bin/bash
# director 服务器上开启路由转发功能
echo 1 > /proc/sys/net/ipv4/ip_forward
# 关闭icmp的重定向
echo 0 > /proc/sys/net/ipv4/conf/all/send_redirects
echo 0 > /proc/sys/net/ipv4/conf/default/send_redirects
# 注意区分网卡名字，阿铭的两个网卡分别为ens33和ens37
echo 0 > /proc/sys/net/ipv4/conf/ens33/send_redirects
echo 0 > /proc/sys/net/ipv4/conf/ens37/send_redirects
# director 设置nat防火墙
iptables -t nat -F
iptables -t nat -X
iptables -t nat -A POSTROUTING -s 192.168.188.0/24  -j MASQUERADE
# director设置ipvsadm
IPVSADM='/usr/sbin/ipvsadm'
$IPVSADM -C
$IPVSADM -A -t 192.168.147.144:80 -s wlc -p 300
$IPVSADM -a -t 192.168.147.144:80 -r 192.168.188.129:80 -m -w 1
$IPVSADM -a -t 192.168.147.144:80 -r 192.168.188.127:80 -m -w 1
