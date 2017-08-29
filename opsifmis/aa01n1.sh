aa01n1(){
OS_VER=`oslevel`
OS_SUB=`expr substr $OS_VER 1 3`
if [ "$OS_SUB" != "5.2" ];then
    OS_VER=`oslevel -sq  2>&1 | head -3 | tail -1`
fi
}
aa01n1
