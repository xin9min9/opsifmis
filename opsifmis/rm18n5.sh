rm18n5(){
[ -f /etc/init.d/mysqld ] && { bindir__=$(awk -F= '/bindir=/ {print $2}' /etc/init.d/mysqld | head -1);
$bindir__/mysql -e "show databases;" >$$.databases; }
grep -vE "Database|information_schema|mysql|performance_schema|test" $$.databases
rm -f $$.databases
}
rm18n5
