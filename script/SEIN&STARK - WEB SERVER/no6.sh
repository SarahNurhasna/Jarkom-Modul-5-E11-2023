# buat cek baris rulenya
# iptables -L INPUT --line-numbers

# buat rule baru dan simpan di baris pertama agar dicek terlebih dahulu apakah jamnya tersedia atau tidak
iptables -I INPUT 1 -p tcp --dport 22 -s 10.42.4.0/22 -m time --timestart 12:00 --timestop 13:00 --weekdays Mon,Tue,Wed,Thu -j DROP
# buat rule baru dan simpan di baris kedua agar dicek terlebih dahulu apakah jamnya tersedia atau tidak
iptables -I INPUT 2 -p tcp --dport 22 -s 10.42.4.0/22 -m time --timestart 11:00 --timestop 13:00 --weekdays Fri -j DROP

# testing
# ubah datenya dulu
# berhasil
date --set="2023-12-15 10:00:00"

# gagal
# senin jam istirahat
date --set="2023-12-11 12:00:00"

# jumat jam jumatan
date --set="2023-12-15 12:00:00"