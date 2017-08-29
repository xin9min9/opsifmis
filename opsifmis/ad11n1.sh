ad11n1(){
DLM_VER=''
DLM_VER=`/usr/DynamicLinkManager/bin/dlnkmgr view -sys 2>&1|grep -i 'HDLM Version'|tr -s ' '|tr -d ' '|cut -d ':' -f2`
[ -z "$DLM_VER" ] && { echo 'none'; } || { echo $DLM_VER; }
}
ad11n1
