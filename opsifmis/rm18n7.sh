rm18n7(){
[ -f /etc/init.d/mysqld ] && { bindir__=$(awk -F= '/bindir=/ {print $2}' /etc/init.d/mysqld | head -1);
$bindir__/mysql -e "SELECT TABLE_SCHEMA AS 'Table Schema', CONCAT(ROUND(SUM(data_length)/(1024*1024*1024), 6), ' G') AS 'Total Data Size',CONCAT(ROUND(SUM(index_length)/(1024*1024*1024), 6), ' G') AS 'Total Index Size'  FROM information_schema.TABLES group by TABLE_SCHEMA;" >$$.dbinfo; }
awk 'NR!=1{print}' $$.dbinfo | sed 's/\t/,/g'
rm -f $$.dbinfo
}
rm18n7
