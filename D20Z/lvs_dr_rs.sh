#/bin/bash
vip=192.168.72.110
#把vip绑定在lo上，是为了实现rs直接把结果返回给客户端
ifconfig lo:0 $vip broadcast $vip netmask 255.255.255.255 up
route add -host $vip lo:0
#以下操作为更改arp内核参数，目的是为了让rs顺利发送mac地址给客户端
#参考文档www.cnblogs.com/lgfeng/archive/2012/10/16/2726308.html
echo "1" >/proc/sys/net/ipv4/conf/lo/arp_ignore
echo "2" >/proc/sys/net/ipv4/conf/lo/arp_announce
echo "1" >/proc/sys/net/ipv4/conf/all/arp_ignore
echo "2" >/proc/sys/net/ipv4/conf/all/arp_announce
