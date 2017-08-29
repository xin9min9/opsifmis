ai08n0(){
if_ihs=''
if [ -f "/WebSphere/HTTPServer/version.signature" ];then
    if_ihs='Y'
elif [ -f "/WebSphere/HTTPServer/bin/versionInfo.sh" ];then
    if_ihs='Y'
elif [ -f "/IHS/IBMIHS/version.signature" ];then
    if_ihs='Y'
elif [ -f "/usr/lib/objrepos/vpd.properties" ];then
    IHS_HOME=`grep IHS /usr/lib/objrepos/vpd.properties|grep -vi component|grep  'HTTP Server'|awk -F '|' '{print $13}'`
    if [ "${IHS_HOME}" != "" ];then
        if [ -f "$IHS_HOME/version.signature" ];then
            if_ihs='Y'
        elif [ "$IHS_HOME/bin/versionInfo.sh" ];then
            if_ihs='Y'
        fi
    fi
fi
[ -z "$if_ihs" ] && { echo 'N'; } || { echo 'Y'; }
}
ai08n0
