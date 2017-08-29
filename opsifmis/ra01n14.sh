ra01n14(){
ra01n14kb=`cat /proc/meminfo | grep ^MemTotal| awk -F: '{print $2}'|tr -d ' kKbB'`
ra01n14mb=`expr ${ra01n14kb} / 1024`
echo $ra01n14mb
}
ra01n14
