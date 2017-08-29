ad23n0(){
ps -ef|grep -v grep | grep -q db2sys
[ $? -eq 0 ] && { echo 'Y'; } || { echo 'N'; }
}
ad23n0
