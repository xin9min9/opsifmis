ra01n10(){
cat /proc/cpuinfo |grep 'model name' |awk -F: '{print $2}'|sort -n|uniq
}
ra01n10
