aa01n10(){
prtconf | grep 'CPU Type:' | awk -F: '{print $2}' | tr -d ' '
}
aa01n10
