rm18n6(){
[ -f /etc/init.d/mysqld ] && { bindir__=$(awk -F= '/bindir=/ {print $2}' /etc/init.d/mysqld | head -1);
$bindir__/mysql -e "SELECT CONCAT(table_schema,'.',table_name) AS 'Table Name',   
    table_rows AS 'Number of Rows',   
    CONCAT(ROUND(data_length/(1024*1024*1024),6),' G') AS 'Data Size',   
    CONCAT(ROUND(index_length/(1024*1024*1024),6),' G') AS 'Index Size' ,   
    CONCAT(ROUND((data_length+index_length)/(1024*1024*1024),6),' G') AS'Total'  
FROM information_schema.TABLES;" >$$.dbinfo; }
awk 'NR!=1{print}' $$.dbinfo | sed 's/\t/,/g'
rm -f $$.dbinfo
}
rm18n6
