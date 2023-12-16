iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp -j DROP
iptables -A INPUT -p udp -j DROP

# testing
# tcp 1
nc -l -p 8080

# udp
nc -u -l -p 8080

# tcp 2
nc -l -p 9090