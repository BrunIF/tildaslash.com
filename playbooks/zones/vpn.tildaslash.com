; vpn.tildaslash.com
$TTL 86400
@	IN	SOA	ns1.int.tildaslash.com. daniel.danielhall.me. (
                       2012090702 ; serial
                       14400      ; refresh
                       14400      ; update
                       1209600    ; expiry
                       86400      ; minimum
                )

; Nameservers
@		NS	ns1.int.tildaslash.com.
@		NS	ns2.int.tildaslash.com.

warbler		A	192.168.200.1
dan-linode	A	192.168.200.10
vmhost		A	192.168.200.14

