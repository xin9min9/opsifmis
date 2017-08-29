ac14n1(){
COBOL_VER=''
if [ -f "/opt/microfocus/cobol/etc/cobver" ];then
    COBOL_VER=`cat /opt/microfocus/cobol/etc/cobver|grep -v PRN`
else
    COBOL_VER='none'
fi
[ -z "$COBOL_VER" ] && { echo 'none'; } || { echo $COBOL_VER; }
}
ac14n1
