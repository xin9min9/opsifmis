rm18n4(){
[ -f /etc/init.d/mysqld ] && { bindir__=$(awk -F= '/bindir=/ {print $2}' /etc/init.d/mysqld | head -1);
$bindir__/mysql -e "show global variables;" >$$.globalvariables; }
sed 's/\s/=/g' $$.globalvariables
rm -f $$.globalvariables
}
rm18n4
