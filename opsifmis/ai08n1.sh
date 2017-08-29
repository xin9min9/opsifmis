ai08n1(){
IHS_VER=''
if [ -f "/WebSphere/HTTPServer/version.signature" ];then
    IHS_VER=`cat /WebSphere/HTTPServer/version.signature |awk '{print $4}'`
elif [ -f "/WebSphere/HTTPServer/bin/versionInfo.sh" ];then
    IHS_VER=`/WebSphere/HTTPServer/bin/versionInfo.sh | grep ^Version | grep -v 'Version Directory' | grep -v 'IBM HTTP Server' |awk '{print $2}'`
elif [ -f "/IHS/IBMIHS/version.signature" ];then
    IHS_VER=`cat /IHS/IBMIHS/version.signature | awk '{print $4}'`
elif [ -f "/usr/lib/objrepos/vpd.properties" ];then
    IHS_HOME=`grep IHS /usr/lib/objrepos/vpd.properties|grep -vi component|grep  'HTTP Server'|awk -F '|' '{print $13}'`
    if [ "${IHS_HOME}" != "" ];then
        if [ -f "$IHS_HOME/version.signature" ];then
            IHS_VER=`cat $IHS_HOME/version.signature | tr -s ' ' | awk '{print $4}'`
        elif [ "$IHS_HOME/bin/versionInfo.sh" ];then
            IHS_VER=`$IHS_HOME/bin/versionInfo.sh | grep ^Version | grep -v 'Version Directory' | grep -v 'IBM HTTP Server' |awk '{print $2}'`
        fi
    fi
fi
[ -z "$IHS_VER" ] && { echo 'none'; } || { echo $IHS_VER; }
}
ai08n1
