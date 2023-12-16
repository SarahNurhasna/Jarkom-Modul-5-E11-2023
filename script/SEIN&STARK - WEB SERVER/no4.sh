# menerima semua IP dari subnet A3 (yang ada GrobeForest nya)
iptables -A INPUT -p tcp --dport 22 -s 10.42.4.0/22 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP

# testing
nc -l -p 22