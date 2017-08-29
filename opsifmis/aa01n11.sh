aa01n11(){
prtconf | grep 'Kernel Type:' | awk -F: '{print $2}' | tr -d ' '
}
aa01n11
