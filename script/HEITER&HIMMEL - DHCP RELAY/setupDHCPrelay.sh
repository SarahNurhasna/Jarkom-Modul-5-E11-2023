# DI HEITER DAN HIMMEL

echo 'nameserver 192.168.122.1' > /etc/resolv.conf
# atau simpan di bashrc
apt-get update
apt-get install isc-dhcp-relay -y

echo -e '
    SERVERS="10.42.1.22"  #IP REVOLTE DHCP SERVER
    INTERFACES="eth0 eth1 eth2"
    OPTIONS=""
' > /etc/default/isc-dhcp-relay

# konfigurasi IP forwarding
echo '
    net.ipv4.ip_forward=1
' > /etc/sysctl.conf

service isc-dhcp-relay restart