rm18n3(){
[ -f /etc/init.d/mysqld ] && { bindir__=$(awk -F= '/bindir=/ {print $2}' /etc/init.d/mysqld | head -1);
$bindir__/mysql -e "show variables;" >$$.variables; }
sed 's/\s/=/g' $$.variables
rm -f $$.variables
}
rm18n3
