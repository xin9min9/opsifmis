rm18n0(){
ps -ef|grep -q mysql;[ $? -eq 0 ] && exist__=Y
[ -f /etc/init.d/mysqld -a -z "$exist__" ] && { bindir__=$(awk -F= '/bindir=/ {print $2}' /etc/init.d/mysqld | head -1); [ -x $bindir__/mysql ] && exist__=Y; }
[  -z "$exist__" ] && { echo 'N'; } || { echo 'Y'; }
}
rm18n0
