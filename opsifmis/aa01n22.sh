aa01n22(){
prtconf | grep '' |grep 'IP Address:' | awk -F: '{print $2}' | tr -d ' '
}
aa01n22
