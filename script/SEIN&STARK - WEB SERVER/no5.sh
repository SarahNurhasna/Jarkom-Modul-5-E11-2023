# buat cek baris rulenya
# iptables -L INPUT --line-numbers

# replace rule 1 dengan syntax baru
iptables -R INPUT 1 -p tcp --dport 22 -s 10.42.4.0/22 -m time --timestart 08:00 --timestop 16:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT

# testing
# set timenya dulu
# success
date --set="2023-12-15 10:00:00"
# fail
date --set="2023-12-15 22:00:00"

nc -l -p 22