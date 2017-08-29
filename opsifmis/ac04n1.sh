ac04n1(){
CICS_VER=''
if [ -f /usr/lpp/cics/bin/cicsget ];then
    CICS_VER=`su - root -c "/usr/lpp/cics/bin/cicscp version 2>&1"`
    if [ $? -ne 0 ];then
        CICS_VER=`su - root -c "/usr/bin/what /usr/lpp/cics/lib/libcicsrt.a 2>&1 |grep CICS | tr -s ' ' | cut -d ' ' -f8| sort -n | uniq  2>&1"`
    fi
fi
[ -z "$CICS_VER" ] && { echo 'none'; } || { echo $CICS_VER; }
}
ac04n1
