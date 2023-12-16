# DI SEIN & STARK

echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt update
apt install netcat -y
apt install apache2 -y
service apache2 start

echo '
Listen 80
Listen 443

<IfModule ssl_module>
        Listen 443
</IfModule>

<IfModule mod_gnutls.c>
        Listen 443
</IfModule>
' > /etc/apache2/ports.conf

# untuk testing
# echo '
# # Sein | Stark
# Ini Sein | Ini Stark
# ' > /var/www/html/index.html

service apache2 restart