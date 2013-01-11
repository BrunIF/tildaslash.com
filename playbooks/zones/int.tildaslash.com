; int.tildaslash.com
$TTL 86400
@	IN	SOA	ns1.int.tildaslash.com. daniel.danielhall.me. (
                       2013011201 ; serial
                       14400      ; refresh
                       14400      ; update
                       1209600    ; expiry
                       86400      ; minimum
                )

; Nameservers
@		NS	ns1.int.tildaslash.com.
@		NS	ns2.int.tildaslash.com.

; Service based CNAMEs
config		300	CNAME	config01

; Hosts on the VM subnet (192.168.2.0/24)
@		300	A	192.168.2.1
vmnet		300	A	192.168.2.1
ns1		300	A	192.168.2.2
ns2		300	A	192.168.2.3
admin01		300	A	192.168.2.4
monitor01	300	A	192.168.2.5
auth01          300	A	192.168.2.6
config01	300	A	192.168.2.7
admin02		300	A	192.168.2.8
smtp01		300	A	192.168.2.9
qroud01		300	A	192.168.2.10

; Hosts on the Physical subnet (192.168.0.0/24)
router		300	A	192.168.0.1
2tb		300	A	192.168.0.2
xbee		300	A	192.168.0.3

printer		300	A	192.168.0.6

vmhost		300	A	192.168.0.15

mumble		300	A	192.168.0.25

beaglebone	300	A	192.168.0.30
beaglebone2	300	A	192.168.0.31

ninja01		300	A	192.168.0.50
ninja02		300	A	192.168.0.51

; DHCP hosts
$GENERATE 200-250 dhcp$   A       192.168.0.$
$GENERATE 100-254 vmdhcp$ A       192.168.2.$

