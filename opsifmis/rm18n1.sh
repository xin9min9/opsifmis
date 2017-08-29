rm18n1(){
[ -f /etc/init.d/mysqld ] && { bindir__=$(awk -F= '/bindir=/ {print $2}' /etc/init.d/mysqld | head -1);$bindir__/mysql -V| awk '{$1="";print}'; }
#  Ver 14.14 Distrib 5.6.4-m7, for Linux (x86_64) using EditLine wrapper

# also: $bindir__/mysql_config --version 
# 5.6.4-m7
}
rm18n1
