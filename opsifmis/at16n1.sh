at16n1(){
TWS_VER=''
if [ -f /etc/TWS/TWSRegistry.dat ];then
PID=$$
>/tmp/tws_ver.$PID
TWSRegistry=`grep _DN_InstallationPath /etc/TWS/TWSRegistry.dat`
for Registry in $TWSRegistry
do
    tws_user=`echo $Registry | awk -F'_DN_' '{print $1}' |awk -F/ '{print $NF}'`
    tws_version=`cat /etc/TWS/TWSRegistry.dat |grep $tws_user | grep FixpackName | awk -F"${tws_user}." '{print $3}'`   
  if [ -z "$tws_version" ];then
    tws_version=`cat /etc/TWS/TWSRegistry.dat |grep $tws_user | grep PackageName | awk -F"${tws_user}." '{print $3}'`
  fi
    echo $tws_version >>/tmp/tws_ver.$PID
done
  TWS_VER=`cat /tmp/tws_ver.$PID | sort -n | uniq |tr '\n' ' '`
else
  TWS_VER='none'
fi
[ -z "$TWS_VER" ] && { echo 'none'; } || { echo $TWS_VER; }
}
at16n1
