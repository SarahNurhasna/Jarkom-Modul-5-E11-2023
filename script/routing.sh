# route add -net <NID subnet> netmask <netmask> gw <IP gateway>

# default routing
# HEITER --> eth1 aura
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.42.1.1
# FERN --> eth0 Himmel
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.42.1.14

# HIMMEL
# A9 (Fern-Richter) - eth0 fern
up route add -net 10.42.1.16 netmask 255.255.255.252 gw 10.42.1.130
# A10 (Fern-revolte) - eth0 fern
up route add -net 10.42.1.20 netmask 255.255.255.252 gw 10.42.1.130

# FRIEREN
# A7 (himmel-laubHils) - eth0 himmel
up route add -net 10.42.2.0 netmask 255.255.254.0 gw 10.42.1.14
# A8 (himmel-schwerMountain-fern) - eth0 himmel
up route add -net 10.42.1.128 netmask 255.255.255.128 gw 10.42.1.14
# A9 (fern-richter) - eth0 himmel
up route add -net 10.42.1.16 netmask 255.255.255.252 gw 10.42.1.14
# A10 (fern-revolte) - eth0 himmel
up route add -net 10.42.1.20 netmask 255.255.255.252 gw 10.42.1.14

# AURA
# aura-heiter
# A2 (heiter-turkRegion) - eth0 heiter
up route add -net 10.42.8.0 netmask 255.255.248.0 gw 10.42.1.2
# A3 (heiter-sein-grobeForest) - eth0 heiter
up route add -net 10.42.4.0 netmask 255.255.252.0 gw 10.42.1.2

# aura-frieren
# A5 (frieren-stark) - eth0 frieren
up route add -net 10.42.1.8 netmask 255.255.255.252 gw 10.42.1.6
# A6 (frieren-himmel) - eth0 frieren
up route add -net 10.42.1.12 netmask 255.255.255.252 gw 10.42.1.6
# A7 (himmel-laubHills) - eth0 frieren
up route add -net 10.42.2.0 netmask 255.255.254.0 gw 10.42.1.6
# A8 (himmel-schewerMountain-fern) - eth0 frieren
up route add -net 10.42.1.128 netmask 255.255.255.128 gw 10.42.1.6
# A9 (fern-Richter) - eth0 frieren
up route add -net 10.42.1.16 netmask 255.255.255.252 gw 10.42.1.6
# A10 (fern-revolte) - eth0 frieren
up route add -net 10.42.1.20 netmask 255.255.255.252 gw 10.42.1.6