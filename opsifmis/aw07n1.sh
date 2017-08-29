aw07n1(){
WAS_VER=''
if [ -f  "/WebSphere/AppServer/bin/versionInfo.sh" ];then
    WAS_VER=`/WebSphere/AppServer/bin/versionInfo.sh | grep ^Version |grep -v '^Version Directory'|awk '{print $2}'`
elif [ -f "/IBM/WebSphere/AppServer/bin/versionInfo.sh" ];then
    WAS_VER=`/IBM/WebSphere/AppServer/bin/versionInfo.sh |grep ^Version |grep -v '^Version Directory'|awk '{print $2}'`
elif  [ -f "/was32/AppServer/bin/versionInfo.sh" ];then
    WAS_VER=`/was32/AppServer/bin/versionInfo.sh |grep ^Version |grep -v '^Version Directory'|awk '{print $2}'`
elif [ -f "/usr/lib/objrepos/vpd.properties" ];then
    WAS_HOME=`grep WS /usr/lib/objrepos/vpd.properties|grep -vi component|awk -F '|' '{print $13}'|grep AppServer|sort|uniq|head -1`
    if [ "$WAS_HOME" != "" ];then
        if [ -d "$WAS_HOME" ];then
            WAS_VER=`$WAS_HOME/bin/versionInfo.sh|grep ^Version |grep -v '^Version Directory'|awk '{print $2}'`
        fi
    fi
fi
[ -z "$WAS_VER" ] && { echo 'none'; } || { echo $WAS_VER; }
}
aw07n1
