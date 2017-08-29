aw07n0(){
if_was=''
if [ -f  "/WebSphere/AppServer/bin/versionInfo.sh" ];then
    if_was='Y'
elif [ -f "/IBM/WebSphere/AppServer/bin/versionInfo.sh" ];then
    if_was='Y'
elif  [ -f "/was32/AppServer/bin/versionInfo.sh" ];then
    if_was='Y'
elif [ -f "/usr/lib/objrepos/vpd.properties" ];then
    WAS_HOME=`grep WS /usr/lib/objrepos/vpd.properties|grep -vi component|awk -F '|' '{print $13}'|grep AppServer|sort|uniq|head -1`
    if [ "$WAS_HOME" != "" ];then
        if [ -d "$WAS_HOME" ];then
            if_was='Y'
        fi
    fi
fi
[ -z "$if_was" ] && { echo 'N'; } || { echo 'Y'; }
}
aw07n0
