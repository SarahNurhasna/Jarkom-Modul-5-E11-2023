# AURA
auto eth0
iface eth0 inet dhcp
hwaddress ether 3a:4c:af:92:6f:3b
# up iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source 192.168.122.225

#A1 --> 10.42.1.0 - 10.42.1.3
auto eth1
iface eth1 inet static
address 10.42.1.1
netmask 255.255.255.252

#A4 --> 10.42.1.4 - 10.42.1.7
auto eth2
iface eth2 inet static
address 10.42.1.5
netmask 255.255.255.252

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# HEITER
#A1 --> 10.42.1.0 - 10.42.1.3
auto eth0
iface eth0 inet static
address 10.42.1.2
netmask 255.255.255.252
gateway 10.42.1.1

#A2 --> 10.42.8.0 - 10.42.15.255
auto eth1
iface eth1 inet static
address 10.42.8.1
netmask 255.255.248.0

#A3 --> 10.42.4.0 - 10.42.7.255
auto eth2
iface eth2 inet static
address 10.42.4.1
netmask 255.255.252.0
# up echo nameserver 192.168.122.1 > /etc/resolv.conf

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# SEIN
#A3 --> 10.42.4.0 - 10.42.7.255
auto eth0
iface eth0 inet static
address 10.42.4.2
netmask 255.255.255.252
gateway 10.42.4.1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# FRIEREN
#A4 --> 10.42.1.4 - 10.42.1.7
auto eth0
iface eth0 inet static
address 10.42.1.6
netmask 255.255.255.252
gateway 10.42.1.5

#A5 --> 10.42.1.8 - 10.42.1.11
auto eth1
iface eth1 inet static
address 10.42.1.9
netmask 255.255.255.252

#A6 --> 10.42.1.12 - 10.42.1.15
auto eth2
iface eth2 inet static
address 10.42.1.13
netmask 255.255.255.252

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# STARK
#A5 --> 10.42.1.8 - 10.42.1.11
auto eth0
iface eth0 inet static
address 10.42.1.10
netmask 255.255.255.252
gateway 10.42.1.9

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# HIMMEL
#A6 --> 10.42.1.12 - 10.42.1.15
auto eth0
iface eth0 inet static
address 10.42.1.14
netmask 255.255.255.252
gateway 10.42.1.13

#A7 --> 10.42.2.0 - 10.42.3.255
auto eth1
iface eth1 inet static
address 10.42.2.1
netmask 255.255.254.0

#A8 --> 10.42.1.128 - 10.42.1.255
auto eth2
iface eth2 inet static
address 10.42.1.129
netmask 255.255.255.128

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# FERN
#A8 --> 10.42.1.128 - 10.42.1.255
auto eth0
iface eth0 inet static
address 10.42.1.130
netmask 255.255.255.128
gateway 10.42.1.129

#A9 --> 10.42.1.16 - 10.42.1.19
auto eth1
iface eth1 inet static
address 10.42.1.17
netmask 255.255.255.252

#A10 --> 10.42.1.20 - 10.42.1.23
auto eth2
iface eth2 inet static
address 10.42.1.21
netmask 255.255.255.252

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# RICHTER
#A9 --> 10.42.1.16 - 10.42.1.19
auto eth0
iface eth0 inet static
address 10.42.1.18
netmask 255.255.255.252
gateway 10.42.1.17

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# REVOLTE
#A10 --> 10.42.1.20 - 10.42.1.23
auto eth0
iface eth0 inet static
address 10.42.1.22
netmask 255.255.255.252
gateway 10.42.1.21

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# TURK REGION -> DHCP
auto eth0
iface eth0 inet dhcp
gateway 10.42.8.1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# GROBE FOREST -> DHCP
auto eth0
iface eth0 inet dhcp
gateway 10.42.4.1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# LAUB HILLS -> DHCP
auto eth0
iface eth0 inet dhcp
gateway 10.42.2.1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# SCHWER MOUNTAIN -> DHCP
auto eth0
iface eth0 inet dhcp
gateway 10.42.1.129