
ifconfig-push 192.168.200.14 192.168.200.13

iroute 192.168.2.0 255.255.255.0
iroute 192.168.0.0 255.255.255.0
