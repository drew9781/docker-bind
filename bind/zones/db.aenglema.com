;
; BIND data file for local loopback interface
;
$TTL	3h
@	IN	SOA	ns1.aenglema.com. admin.aenglema.com. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
	IN	NS	ns1.aenglema.com.
	IN	NS	ns2.aenglema.com.

ns1.aenglema.com.		IN	A	127.0.0.1
ns2.aenglema.com.		IN	A	192.168.1.12

unifi.aenglema.com.		IN	A	192.168.1.44

_http._tcp.unifi.aenglema.com. IN	SRV	0 0 8443	unifi.aenglema.com.
pve.aenglema.com.	 	IN	A	192.168.1.33

