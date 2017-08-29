rw20n1(){
rw20n1_ver=''
if [ -f /Weblogic/oracle/registry.xml ];then
    rw20n1_ver=$(grep '="WebLogic Server\"' /Weblogic/oracle/registry.xml | awk -F\" '{print $4}')
fi
[ -z "$rw20n1_ver" ] && { echo 'none'; } || { echo $rw20n1_ver; }
}
rw20n1
