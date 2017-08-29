ac05n1(){
CTG_VER=''
if /usr/bin/cicscli -v >/dev/null 2>&1 ;then
    CTG_VER=`/usr/bin/cicscli -v 2>&1 |grep CCL8029|tr -s ' '|awk -F 'Version' '{print $2}'`
fi
[ -z "$CTG_VER" ] && { echo 'none'; } || { echo $CTG_VER; }
}
ac05n1
