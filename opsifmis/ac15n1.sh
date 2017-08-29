ac15n1(){
CD_VER=''
if [ -f "/cd41/cdunix4100/ndm/bin/direct" ];then
    su - cdadmin -c "echo 'quit;' | /cd41/cdunix4100/ndm/bin/direct 2>&1" > /tmp/cdver.$$
    CD_VER=`cat /install/cdver.tmp 2>&1 | grep 'Connect:Direct(R)'| awk '{print $(NF-1)}'`
    rm /tmp/cdver.$$
else
    CD_VER='none'
fi
[ -z "$CD_VER" ] && { echo 'none'; } || { echo $CD_VER; }
}
ac15n1
