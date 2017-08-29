rd23n1(){
rd23n1_ver=''
for rd23n1_user in $(ps -ef|grep -v grep | grep db2sys | awk '{print $1}')
do
rd23n1_ver=$(su - $rd23n1_user -c "db2level" | grep "DB2 v" | awk -F\" '{print $2}' | awk -F'v' '{print $2}')
break
done
[ -z "$rd23n1_ver" ] && { echo 'none'; } || { echo $rd23n1_ver; }
}
rd23n1
