echo 'nameserver 192.168.122.1' > /etc/resolv.conf
# atau simpan di bashrc REVOLTE (DHCP SERVER)
apt update
apt install netcat -y
apt install isc-dhcp-server -y
# dhcpd --version

# tentukan interface
echo '
INTERFACESv4="eth0"
' > /etc/default/isc-dhcp-server

echo '
    # A1 aura eth1
    subnet 10.42.1.0 netmask 255.255.255.252 {
    }

    # A2 heiter eth1
    subnet 10.42.8.0 netmask 255.255.248.0 {
        range 10.42.8.2 10.42.15.254; # A2 TurkRegion
        option routers 10.42.8.1; # IP heiter eth1
        option broadcast-address 10.42.15.255;
        option domain-name-servers 10.42.1.18; # IP RICHTER DNS SERVER
        default-lease-time 600; 
        max-lease-time 7200;
    }

    # A3 heiter eth2
    subnet 10.42.4.0 netmask 255.255.252.0 {
        range 10.42.4.3 10.42.7.254; # A3 GrobeForest 
        option routers 10.42.4.1; # IP heiter eth2
        option broadcast-address 10.42.7.255;
        option domain-name-servers 10.42.1.18; # IP RICHTER DNS SERVER
        default-lease-time 600; 
        max-lease-time 7200;
    }

    # A4 aura eth2
    subnet 10.42.1.4 netmask 255.255.255.252 {
    }

    # A5 frieren eth1
    subnet 10.42.1.8 netmask 255.255.255.252 {
    }

    # A6 frieren eth2
    subnet 10.42.1.12 netmask 255.255.255.252 {
    }

    # A7 himmel eth1
    subnet 10.42.2.0 netmask 255.255.254.0 {
        range 10.42.2.2 10.42.3.254; # A7 LaubHills
        option routers 10.42.2.1; # IP himmel eth1
        option broadcast-address 10.42.3.255;
        option domain-name-servers 10.42.1.18; # IP RICHTER DNS SERVER
        default-lease-time 600; 
        max-lease-time 7200;
    }

    # A8 himmel eth2
    subnet 10.42.1.128 netmask 255.255.255.128 {
        range 10.42.1.131 10.42.1.254; # A8 SchewerMountain 
        option routers 10.42.1.129; # IP himmel eth2
        option broadcast-address 10.42.1.255;
        option domain-name-servers 10.42.1.18; # IP RICHTER DNS SERVER
        default-lease-time 600; 
        max-lease-time 7200;
    }

    # A9 fern eth1
    subnet 10.42.1.16 netmask 255.255.255.252 {
    }

    # A10 fern eth2
    subnet 10.42.1.20 netmask 255.255.255.252 {
    }
' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart
service isc-dhcp-server status