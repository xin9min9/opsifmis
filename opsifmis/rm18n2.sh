rm18n2(){
[ -f /etc/init.d/mysqld ] && { conf=$(awk -F= '/conf=/ {print $2}' /etc/init.d/mysqld); }
grep -vE "^#|^$" $conf | sed 's/\s//g'
}
rm18n2
