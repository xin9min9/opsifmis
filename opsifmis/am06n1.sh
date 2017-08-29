am06n1(){
MQ_VER=''
export LANG=en_US
if [ -f "/usr/bin/dspmqver" ];then
    # '/usr/bin/dspmqver' no longer available in MQ 7.5.0.4
    MQ_VER=`eval \`which dspmqver\`| grep ^Version: | awk '{print $2}'`
    MQ_VER="$MQ_VER"
fi
[ -z "$MQ_VER" ] && { echo 'none'; } || { echo $MQ_VER; }
}
am06n1
