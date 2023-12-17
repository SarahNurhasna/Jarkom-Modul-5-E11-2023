# AURA
iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source 192.168.122.225

# REVOLTE - DHCP SERVER
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get update
apt install netcat -y
apt-get install isc-dhcp-server -y

# cd /root/jawaban

# CLIENT
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get update
apt install netcat -y

# RICHTER - DNS SERVER
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get update
apt-get install bind9 -y

# HEITER - DHCP RELAY
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get update
apt install netcat -y
apt-get install isc-dhcp-relay -y

# HIMMEL - DHCP RELAY
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get update
apt install netcat -y
apt-get install isc-dhcp-relay -y

