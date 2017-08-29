ad23n1(){
ad23n1_ver=''
for ad23n1_user in $(ps -ef|grep -v grep | grep db2sys | awk '{print $1}')
do
ad23n1_ver=$(su - $ad23n1_user -c "db2level" | grep "DB2 v" | awk -F\" '{print $2}' | awk -F'v' '{print $2}')
break
done
[ -z "$ad23n1_ver" ] && { echo 'none'; } || { echo $ad23n1_ver; }
}
ad23n1
