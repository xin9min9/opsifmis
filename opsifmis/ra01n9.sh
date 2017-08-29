ra01n9(){
cat /proc/cpuinfo |grep ^cpu|grep MHz |awk -F: '{print $2}'|sort -n|uniq
}
ra01n9
